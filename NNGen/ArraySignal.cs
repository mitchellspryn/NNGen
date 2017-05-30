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

namespace NNGen
{
    /// <summary>
    /// A class to represent an array of signals
    /// </summary>
    public class ArraySignal : Signal
    {
        /// <summary>
        /// The base signal in the array
        /// </summary>
        public Signal baseSignal { get; private set; }

        /// <summary>
        /// The uppper bound of the array (the Y in X TO Y)
        /// </summary>
        public int arrayTop { get; private set; }

        /// <summary>
        /// The bottom bound of the array (tye X in X TO Y)
        /// </summary>
        public int arrayBottom { get; private set; }

        /// <summary>
        /// The name of the array 
        /// </summary>
        public string arraySignalName { get; private set; }

        /// <summary>
        /// Creates an array of signals (TYPE X IS ARRAY (Y TO Z) OF Q)
        /// </summary>
        /// <param name="_baseSignal">The name of the underlying singal (X)</param>
        /// <param name="_arrayName">The name of the array signal (the name referenced in the SIGNAL statement)</param>
        /// <param name="_arrayTop">The upper limit of the array (Z)</param>
        /// <param name="_arrayBottom">The lower limit of the array (Y)</param>
        public ArraySignal(Signal _baseSignal, string _arrayName, int _arrayTop, int _arrayBottom) : base(_baseSignal.name, _baseSignal.type, _baseSignal.defaultValue, _baseSignal.top, _baseSignal.bottom)
        {
            this.arrayTop = _arrayTop;
            this.arrayBottom = _arrayBottom;
            this.arraySignalName = _arrayName;
            this.baseSignal = _baseSignal;
        }

        /// <summary>
        /// Declares the arry signal type (TYPE)
        /// </summary>
        /// <returns></returns>
        public string Declare()
        {
            if (this.baseSignal.type == Utilities.VHDLDataType.STD_LOGIC)
            {
                return String.Format("TYPE {0} IS ARRAY ({1} TO {2}) OF {3};", this.baseSignal.name, this.arrayBottom, this.arrayTop, Utilities.GetDescription<Utilities.VHDLDataType>(this.baseSignal.type));
            }
            return String.Format("TYPE {0} IS ARRAY ({1} TO {2}) OF {3}({4} DOWNTO {5});", this.baseSignal.name, this.arrayBottom, this.arrayTop, Utilities.GetDescription<Utilities.VHDLDataType>(this.baseSignal.type), this.baseSignal.top, this.baseSignal.bottom);
        }

        /// <summary>
        /// Declares the existance of the signal (SIGNAL)
        /// </summary>
        /// <returns></returns>
        public override string VHDLString()
        {
            return String.Format("SIGNAL {0} : {1};", this.arraySignalName, this.baseSignal.name);
        }
    }
}
