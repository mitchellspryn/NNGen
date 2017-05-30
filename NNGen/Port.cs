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
using System.ComponentModel;

namespace NNGen
{
    /// <summary>
    /// A datatype representing a port in an entity
    /// </summary>
    public class Port
    {
        /// <summary>
        /// An enumeration representing the directions for the port
        /// </summary>
        public enum portDirection 
        { 
            /// <summary>
            /// Input port
            /// </summary>
            [Description("IN")]
            IN, 
            /// <summary>
            /// Output port
            /// </summary>
            [Description("OUT")]
            OUT, 
            /// <summary>
            /// InOut port
            /// </summary>
            [Description("INOUT")]
            INOUT, 
            /// <summary>
            /// Buffer port
            /// </summary>
            [Description("BUFFER")]
            BUFFER
        };

        /// <summary>
        /// The direction of this particular port
        /// </summary>
        public portDirection direction { get; private set; }

        /// <summary>
        /// The VHDL name of the particular port
        /// </summary>
        public string portName  { get; private set; }

        /// <summary>
        /// The datatype of the particular port (see Utilities.VHDLDataType)
        /// </summary>
        public Utilities.VHDLDataType type { get; private set; }

        /// <summary>
        /// The top number in the (X DOWNTO Y) statement signifying the width of the signal
        /// </summary>
        public int top { get; private set; }

        /// <summary>
        /// The bottom number in the (X DOWNTO Y) statement signifying the width of the signal
        /// </summary>
        public int bottom { get; private set; }

        /// <summary>
        /// The constructor for a port.
        /// </summary>
        /// <param name="_dir">the direction of the port (See portDirection)</param>
        /// <param name="_name">the VHDL name of the port</param>
        /// <param name="_type">the VHDL datatype of the port</param>
        /// <param name="_top">The upper limit for the port (X in X DOWNTO Y)</param>
        /// <param name="_bottom">The lower limit for the port (Y in X DOWNTO Y)</param>
        public Port(portDirection _dir, string _name, Utilities.VHDLDataType _type, int _top, int _bottom)
        {
            this.direction = _dir;
            this.portName = _name;
            this.type = _type;
            this.top = _top;
            this.bottom = _bottom;
            return;
        }

        /// <summary>
        /// Returns a string used to declare the port
        /// Example: 
        /// CLK: IN STD_LOGIC;
        /// </summary>
        /// <param name="isLast">If false, a semicolon will be printed after the end of the signal statement. If true, it will be omitted</param>
        /// <returns>A string used to declare the port</returns>
        public string VHDLString(bool isLast)
        {
            string s = String.Format("{0} : {1} {2}",
                this.portName,
                Utilities.GetDescription<portDirection>(this.direction),
                Utilities.GetDescription<Utilities.VHDLDataType>(this.type));

            if (!(this.top == 0 && this.bottom == 0))
            {
                s += String.Format("({0} DOWNTO {1})", this.top, this.bottom);
            }

            if (!isLast)
            {
                s += ";";
            }

            return s;
        }

        /// <summary>
        /// Returns a signal with the same properties of this port, except for the new name
        /// </summary>
        /// <param name="newName">The name of the newly created signal</param>
        /// <returns>A signal named newName, with the same type and width of the port</returns>
        public Signal toSignal(string newName)
        {
            return new Signal(newName, this.type, null, this.top, this.bottom);
        }

        /// <summary>
        /// Changes the name of the signal
        /// </summary>
        /// <param name="newName"></param>
        public void rename(string newName)
        {
            this.portName = newName;
        }

        /// <summary>
        /// Change the direction of the port
        /// </summary>
        /// <param name="dir">The new direction of the port</param>
        public void setDirection(Port.portDirection dir)
        {
            this.direction = dir;
        }

        /// <summary>
        /// Copy the definition of the port to another port struct
        /// </summary>
        /// <returns>A copy of the current port</returns>
        public Port copy()
        {
            return new Port(this.direction, this.portName, this.type, this.top, this.bottom);
        }
        
    }
}
