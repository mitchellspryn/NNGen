/* Author: Mitchell Spryn (mitchell.spryn@gmail.com) 
 * There is no warranty with this code. I provide it with the intention of being interesting/helpful, but make no
 * guarantees about its correctness or robustness. 
 * This code is free to use as you please, as long as this header comment is left in all of the files and credit is attributed to me for the original content that I have created.
 */
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace NNGen
{
    /// <summary>
    /// The main user interface form for testing the application
    /// Not much documentation is provided, as these aren't meant to be public members. They are very straightforward, and can be used as example cod,e however.
    /// </summary>
    public partial class Form1 : Form
    {
        /// <summary>
        /// The constructor for the form
        /// </summary>
        public Form1()
        {
            InitializeComponent();
        }

        private void testSigmoidPoly_Click(object sender, EventArgs e)
        {
            Port testPort = new Port(Port.portDirection.IN, "input", Utilities.VHDLDataType.SIGNED_FIXED_POINT, 9, -8);
            Sigmoid_PolyApprox sp = new Sigmoid_PolyApprox(testPort, 4, 4, "sigmoid_fracApprox_intFrac");
            if (!sp.writeVHDL("sigmoid_fracApprox_intFrac.vhd"))
            {
                MessageBox.Show("Error writing sigmoid_fracApprox");
                return;
            }

            testPort = new Port(Port.portDirection.IN, "input", Utilities.VHDLDataType.SIGNED_FIXED_POINT, 6, -8);
            sp = new Sigmoid_PolyApprox(testPort, 2, 4, "sigmoid_fracApprox_fracOnly");

            if (!sp.writeVHDL("sigmoid_fracApprox_fracOnly.vhd"))
            {
                MessageBox.Show("Error writing sigmoid_fracOnly");
                return;
            }


            MessageBox.Show("Files successfully written");
            return;
        }

        private void testNeuron_Click(object sender, EventArgs e)
        {
            Port[] neuronPorts = new Port[2];
            neuronPorts[0] = new Port(Port.portDirection.IN, "in_0", Utilities.VHDLDataType.SIGNED_FIXED_POINT, 3, -4);
            neuronPorts[1] = new Port(Port.portDirection.IN, "in_1", Utilities.VHDLDataType.SIGNED_FIXED_POINT, 3, -4);

            AsyncNeuron n = new AsyncNeuron(neuronPorts, 4, 4, 4, AsyncNeuron.NeuronActivationType.SIGMOID_POLY_APPROX, "neuron_intfrac");
            if (!n.writeVHDL("neuron_intfrac.vhd"))
            {
                MessageBox.Show("Problem in writing neuron_intfrac.vhd");
                return;
            }

            MessageBox.Show("Files successfully written.");
            return;
        }

        private void testNN_Click(object sender, EventArgs e)
        {
            int[] neuronCounts = new int[3] { 3, 2, 1 };
            double[] biasValues = new double[2] { 0, 0 };
            AsyncNeuron.NeuronActivationType[] activations = new AsyncNeuron.NeuronActivationType[2] { AsyncNeuron.NeuronActivationType.SIGMOID_POLY_APPROX, AsyncNeuron.NeuronActivationType.SIGMOID_POLY_APPROX };
            int numIntBits = 4;
            int numFracBits = 4;
            int numWeightUpperBits = 4;
            bool isClassifier = true;
            double[] classifierThresholds = new double[1];
            classifierThresholds[0] = 0.5;


            List<double> weights = new List<double>();
            weights.Add(0.0);
            weights.Add(1.0);
            weights.Add(-1.0);
            weights.Add(0.0);
            weights.Add(1.0);
            weights.Add(-1.0);

            AsyncNeuralNetwork nn = new AsyncNeuralNetwork(neuronCounts, biasValues, activations, numIntBits, numFracBits, numWeightUpperBits, isClassifier, classifierThresholds, weights);

            string outFile = Directory.GetCurrentDirectory() + "\\testOne\\";
            System.IO.FileInfo f = new FileInfo(outFile);
            f.Directory.Create();
            if (!(nn.writeVHDL(outFile)))
            {
                MessageBox.Show("Error in writing nn");
                return;
            }

            /*File.Copy throws an exception if the file already exists. Delete it if it does*/
            string fft_filepath = outFile + "\\fixed_float_types.vhd";
            string fpkg_filepath = outFile + "\\fixed_pkg.vhd";

            if (File.Exists(fft_filepath))
            {
                File.Delete(fft_filepath);
            }
            if (File.Exists(fpkg_filepath))
            {
                File.Delete(fpkg_filepath);
            }

            if (!File.Exists(outFile + "\\fixed_pkg.vhd"))
            {
                File.Copy("fixed_float_types.vhd", outFile + "\\fixed_float_types.vhd");
                File.Copy("fixed_pkg.vhd", outFile + "\\fixed_pkg.vhd");
            }

            MessageBox.Show("Files successfully written.");
            return;
        }

        private void syncNeuronTestBtn_Click(object sender, EventArgs e)
        {
            Port[] neuronPorts = new Port[2];
            neuronPorts[0] = new Port(Port.portDirection.IN, "in_0", Utilities.VHDLDataType.SIGNED_FIXED_POINT, 3, -4);
            neuronPorts[1] = new Port(Port.portDirection.IN, "in_1", Utilities.VHDLDataType.SIGNED_FIXED_POINT, 3, -4);

            SyncNeuron sn = new SyncNeuron(neuronPorts, 4, 4, 4, "Neuron_Sync");

            if (!sn.writeVHDL(""))
            {
                MessageBox.Show("Error writing Neuron_Sync.vhd");
                return;
            }

            MessageBox.Show("File written.");
            return;
        }

        private void TestTransferMemBtn_Click(object sender, EventArgs e)
        {
            SyncTransferFunctionMem sm = new SyncTransferFunctionMem(2, 1, TransferFunctionWrapper.MemoryActivationType.UNIPOLAR_SIGMOID, "aa");
            if (!sm.writeVHDL(""))
            {
                MessageBox.Show("Error writing TransferMem file");
                return;
            }
            MessageBox.Show("File written.");
            return;
        }

        private void TestSyncNNBtn_Click(object sender, EventArgs e)
        {
            List<double> weights = new List<double>();
            /*first layer*/
            weights.Add(0.0);
            weights.Add(1.0);
            weights.Add(-1.0);
            weights.Add(1.0);
            weights.Add(0.5);
            weights.Add(-0.5);
            /*Second layer*/
            weights.Add(0.0);
            weights.Add(1.0);
            weights.Add(-1.0);
            weights.Add(1.0);
            weights.Add(1.0);
            weights.Add(0.5);

            SyncNeuralNetwork snn = new SyncNeuralNetwork(new int[] { 2, 2, 2 }, new double[] { -1, 1, 0 }, new TransferFunctionWrapper.MemoryActivationType[] { TransferFunctionWrapper.MemoryActivationType.UNIPOLAR_SIGMOID, TransferFunctionWrapper.MemoryActivationType.UNIPOLAR_SIGMOID }, 4, 4, 4, false, null, weights);
            string outFile = Directory.GetCurrentDirectory() + "\\proj\\";
            System.IO.FileInfo f = new FileInfo(outFile);

            if (!File.Exists(outFile + "\\fixed_pkg.vhd"))
            {
                File.Copy("fixed_float_types.vhd", outFile + "\\fixed_float_types.vhd");
                File.Copy("fixed_pkg.vhd", outFile + "\\fixed_pkg.vhd");
            }
            f.Directory.Create();
            if (!snn.writeVHDL(outFile))
            {
                MessageBox.Show("Problem writing sync neural network");
            }
            MessageBox.Show("File Written");
        }





    }
}
