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
    /// A class representing an internal signal for a VHDL entity
    /// </summary>
    public class Signal
    {
        /// <summary>
        /// The name of the signal
        /// </summary>
        public string name { get; private set; }

        /// <summary>
        /// The datatype of the signal
        /// </summary>
        public Utilities.VHDLDataType type { get; private set; }

        /// <summary>
        /// The default value of the signal. If not specified, then it will be null
        /// </summary>
        public string defaultValue { get; private set; }

        /// <summary>
        /// The top integer in the bus width declaration (i.e. the 'X' in (X DOWNTO Y))
        /// </summary>
        public int top { get; private set; }

        /// <summary>
        /// The bottom integer in the bus width declaration (i.e. the 'Y' in (X DOWNTO Y))
        /// </summary>
        public int bottom { get; private set; }

        /// <summary>
        /// Initializes a signal
        /// </summary>
        /// <param name="_name">The name of the signal</param>
        /// <param name="_type">The datatype of the signal</param>
        /// <param name="_defaultValue">The default value for the signal. If not specified, pass 'null'</param>
        /// <param name="_top">The top integer in the bus width declaration (i.e. the 'X' in (X DOWNTO Y))</param>
        /// <param name="_bottom">The bottom integer in the bus width declaration (i.e. the 'Y' in (X DOWNTO Y))</param>
        public Signal(string _name, Utilities.VHDLDataType _type, string _defaultValue, int _top, int _bottom)
        {
            this.name = _name;
            this.type = _type;
            this.defaultValue = _defaultValue;
            this.top = _top;
            this.bottom = _bottom;
            return;
        }

        /// <summary>
        /// Returns a string declaring the signal
        /// </summary>
        /// <returns>A string declaring the signal</returns>
        public virtual string VHDLString()
        {
            if (this.defaultValue != null)
            {
                /*Integers have weird syntax*/
                if (this.type == Utilities.VHDLDataType.INTEGER)
                {
                    if (this.top == 0 && this.bottom == 0)
                    {
                        if (this.defaultValue == null)
                            return String.Format("SIGNAL {0} : {1};", this.name, Utilities.GetDescription<Utilities.VHDLDataType>(this.type));
                        return String.Format("SIGNAL {0} : {1} := {2};", this.name, Utilities.GetDescription<Utilities.VHDLDataType>(this.type), this.defaultValue);
                    }
                    if (this.defaultValue == null)
                        return String.Format("SIGNAL {0} : {1} RANGE {2} TO {3};", this.name, Utilities.GetDescription<Utilities.VHDLDataType>(this.type), this.bottom, this.top);
                    return String.Format("SIGNAL {0} : {1} RANGE {2} TO {3} := {4};", this.name, Utilities.GetDescription<Utilities.VHDLDataType>(this.type), this.bottom, this.top, this.defaultValue);
                }
                if (this.top == 0 && this.bottom == 0)
                {
                    return String.Format("SIGNAL {0} : {1} := {2};", this.name, Utilities.GetDescription<Utilities.VHDLDataType>(this.type), this.defaultValue);
                }
                return String.Format("SIGNAL {0} : {1}({2} DOWNTO {3}) := \"{4}\";", this.name, Utilities.GetDescription<Utilities.VHDLDataType>(this.type), this.top, this.bottom, this.defaultValue);
            }
            else
            {
                if (this.top == 0 && this.bottom == 0)
                {
                    return String.Format("SIGNAL {0} : {1};", this.name, Utilities.GetDescription<Utilities.VHDLDataType>(this.type));
                }
                return String.Format("SIGNAL {0} : {1}({2} DOWNTO {3});", this.name, Utilities.GetDescription<Utilities.VHDLDataType>(this.type), this.top, this.bottom);
            }
        }

        /// <summary>
        /// Returns a port with the same parameters of the signal
        /// </summary>
        /// <param name="_dir">The direction of the newly created port</param>
        /// <returns>A port object with the same width, name, and datatype of the current signal</returns>
        public virtual Port toPort(Port.portDirection _dir)
        {
            return new Port(_dir, this.name, this.type, this.top, this.bottom);
        }
    }
}
