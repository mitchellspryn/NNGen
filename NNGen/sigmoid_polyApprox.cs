/* Author: Mitchell Spryn (mitchell.spryn@gmail.com) 
 * There is no warranty with this code. I provide it with the intention of being interesting/helpful, but make no
 * guarantees about its correctness or robustness. 
 * This code is free to use as you please, as long as this header comment is left in all of the files and credit is attributed to me for the original content that I have created.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Reflection;
using System.ComponentModel;

namespace NNGen
{
    /// <summary>
    /// A thresholding function approximating the sigmoid function 1/(1 + exp(-x))
    /// 
    /// This class uses the approximation 
    ///   sigmoid(x) ~ (1/2) * ( 1 + (x/(x+1)) )
    /// </summary>
    public class Sigmoid_PolyApprox : Entity
    {
        /// <summary>
        /// The input signal to the thresholding function
        /// </summary>
        public Port sigmoidInput { get; private set; }

        /// <summary>
        /// The output signal to the thresholding function
        /// </summary>
        public Port sigmoidOutput { get; private set; }

        /// <summary>
        /// An internal signal used in the sigmoid computation
        /// </summary>
        public Signal numerator { get; private set; }

        /// <summary>
        /// An internal signal used in the sigmoid computation
        /// </summary>
        public Signal denominator { get; private set; }

        /// <summary>
        /// An internal signal used in the sigmoid computation
        /// </summary>
        public Signal thresh_sum { get; private set; }


        /// <summary>
        /// The number of bits to use in the output signal representing the fractional portion of the result
        /// </summary>
        public int outputFracBits { get; private set; }

        /// <summary>
        /// The number of integer bits to use in the output signal.
        /// These will all be zeros, but this member can be useful to merge signal sizes
        /// </summary>
        public int outputIntBits { get; private set; }


        /// <summary>
        /// The name of the entity
        /// </summary>
        public string name = "sigmoid_polyApprox";

        /// <summary>
        /// Initializes the Sigmoid thresholding element
        /// </summary>
        /// <param name="_sigmoidInputPort">The input port to the device</param>
        /// <param name="_outputIntBits">The number of integer bits to be used in the output. These will all be zeroes, but this can be useful in matching bus widths in higher level entities</param>
        /// <param name="_outputFracBits">The number of fractional bits to be used in the output.</param>
        /// <param name="_name">The name of the entity</param>
        public Sigmoid_PolyApprox(Port _sigmoidInputPort, int _outputIntBits, int _outputFracBits, string _name)
        {
            /*Copy important variables*/
            this.sigmoidInput = _sigmoidInputPort;
            this.outputFracBits = _outputFracBits;
            this.outputIntBits = _outputIntBits;
            this.name = _name;

            /*Compute internal signal widths*/
            int upperInputWidth = this.sigmoidInput.top;
            int bottomInputWidth = this.sigmoidInput.bottom;

            this.numerator = new Signal("numerator", Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, upperInputWidth + 2, bottomInputWidth);
            this.denominator = new Signal("denominator", Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, upperInputWidth + 2, bottomInputWidth);

            this.thresh_sum = new Signal("thresh_sum", Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, outputIntBits - 1, -1 * outputFracBits);

            /*Initialize output port*/
            this.sigmoidOutput = new Port(Port.portDirection.OUT, "output", Utilities.VHDLDataType.SIGNED_FIXED_POINT, _outputIntBits - 1, _outputFracBits * -1);

            return;
        }

        /// <summary>
        /// Initializes the Sigmoid thresholding element
        /// </summary>
        /// <param name="_sigmoidInputSigmal">The input signal to the device</param>
        /// <param name="_outputIntBits">The number of integer bits to be used in the output. These will all be zeroes, but this can be useful in matching bus widths in higher level entities</param>
        /// <param name="_outputFracBits">The number of fractional bits to be used in the output.</param>
        /// <param name="_name">The name of the entity</param>
        public Sigmoid_PolyApprox(Signal _sigmoidInputSigmal, int _outputIntBits, int _outputFracBits, string _name)
        {
            /*Copy important variables*/
            Port SI = new Port(Port.portDirection.IN, _sigmoidInputSigmal.name, _sigmoidInputSigmal.type, _sigmoidInputSigmal.top, _sigmoidInputSigmal.bottom);
            this.sigmoidInput = SI;
            this.outputFracBits = _outputFracBits;
            this.outputIntBits = _outputIntBits;
            this.name = _name;

            /*Compute internal signal widths*/
            int upperInputWidth = this.sigmoidInput.top;
            int bottomInputWidth = this.sigmoidInput.bottom;

            this.numerator = new Signal("numerator", Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, upperInputWidth + 2, bottomInputWidth);
            this.denominator = new Signal("denominator", Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, upperInputWidth + 2, bottomInputWidth);

            this.thresh_sum = new Signal("thresh_sum", Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, outputIntBits - 1, outputFracBits * -1);

            /*Initialize output port*/
            this.sigmoidOutput = new Port(Port.portDirection.OUT, "output", Utilities.VHDLDataType.SIGNED_FIXED_POINT, _outputIntBits - 1, _outputFracBits * -1);



            return;
        }

        /// <summary>
        /// Returns the name of the entity
        /// </summary>
        /// <returns>The name of the entity</returns>
        public override string getName()
        {
            return this.name;
        }

        /// <summary>
        /// Returns the input ports to the device
        /// </summary>
        /// <returns>The input ports to the device</returns>
        public override Port[] getInputPorts()
        {
            return new Port[] { this.sigmoidInput };
        }

        /// <summary>
        /// Returns the output ports to the device
        /// </summary>
        /// <returns>The output ports of the device</returns>
        public override Port[] getOutputPorts()
        {
            return new Port[] { this.sigmoidOutput };
        }

        /// <summary>
        /// Returns the internal signals of the device
        /// </summary>
        /// <returns>The internal signals of the device</returns>
        public override Signal[] getInternalSignals()
        {
            return new Signal[]
           {
               this.numerator,
               this.denominator,
               this.thresh_sum
           };
        }

        /// <summary>
        /// Writes the .vhd files necessary to compile this entity.
        /// All other necessary entities (i.e. neurons, thresholding functions, etc.) will also be written 
        /// when this function returns
        /// </summary>
        /// <param name="file">The file path in which to write the files (do NOT include "...name.vhd"</param>
        /// <returns>true if the files were written successfully, false otherwise</returns>
        public override bool writeVHDL(string file)
        {
            bool successfulWrite = false;
            string entityFile = file + this.name + ".vhd";
            using (StreamWriter sw = new StreamWriter(entityFile))
            {
                if (!((this.writeVHDLIncludes(sw)) && (this.writeVHDLEntity(sw)) && (this.writeArchitectureStatement(sw)) && (this.writeVHDLDependencies(sw, new List<Entity>() { null })) && (this.writeVHDLSignals(sw))))
                {
                    return false;
                }

                /*Write the numerator process block*/
                sw.WriteLine(String.Format("process ({0})", this.sigmoidInput.portName));
                sw.WriteLine(String.Format("begin"));

                sw.WriteLine(String.Format("\tif ({0} > 0) then", this.sigmoidInput.portName));
                sw.WriteLine(String.Format("\t\t{0} <= {1} + {1} + to_sfixed(1, {1});", this.numerator.name, this.sigmoidInput.portName));
                sw.WriteLine("\telse");
                sw.WriteLine(String.Format("\t\t{0} <= to_sfixed(1, {0});", this.numerator.name));
                sw.WriteLine(String.Format("\t\tend if;"));
                sw.WriteLine(String.Format("\tend process;"));
                sw.WriteLine("");

                /*Write the denominator statement, division statement, and output signal assignment*/
                sw.WriteLine(String.Format("\t{0} <= abs({1}) + to_sfixed(1, {1});", this.denominator.name, this.sigmoidInput.portName));
                sw.WriteLine(String.Format("\t{0} <= resize(({1} / {2}), {0});", this.thresh_sum.name, this.numerator.name, this.denominator.name));
                sw.WriteLine(String.Format("\t{0} <= {1};", this.sigmoidOutput.portName, this.thresh_sum.name));
                sw.WriteLine(String.Format(""));

                successfulWrite = this.writeVHDLFooter(sw);
            }
            return successfulWrite;
        }

    }
}
