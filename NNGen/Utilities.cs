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
using System.Reflection;

namespace NNGen
{
    /// <summary>
    /// A collection of useful utilities that don't really fit anywhere else
    /// </summary>
    public static class Utilities
    {
        /// <summary>
        /// An enumeration representing the different datatypes used in the VHDL file generation
        /// </summary>
        public enum VHDLDataType 
        { 
            /// <summary>
            /// STD_LOGIC_VECTOR
            /// </summary>
            [Description("STD_LOGIC_VECTOR")]
            STD_LOGIC_VECTOR,
            /// <summary>
            /// STD_LOGIC
            /// </summary>
            [Description("STD_LOGIC")]
            STD_LOGIC, 
            /// <summary>
            /// SIGNED
            /// </summary>
            [Description("SIGNED")]
            SIGNED, 
            /// <summary>
            /// UNSIGNED
            /// </summary>
            [Description("UNSIGNED")]
            UNSIGNED,
            /// <summary>
            /// Signed Fixed Point
            /// </summary>
            [Description("sfixed")]
            SIGNED_FIXED_POINT,
            /// <summary>
            /// Unsigned Fixed Point
            /// </summary>
            [Description("ufixed")]
            UNSIGNED_FIXED_POINT,
            /// <summary>
            /// Integer
            /// </summary>
            [Description("INTEGER")]
            INTEGER
        };

        /// <summary>
        /// Returns the most accurate fixed point representation of a number possible in the given number of integer and fractional bits
        /// The number returned will be in two's complement form, with the most significant bit being the sign bit
        /// </summary>
        /// <param name="input">The number to approximate</param>
        /// <param name="numIntBits">The number of integer bits to use in the representation. If insufficient, an exception is thrown. The sign bit counts as an integer bit</param>
        /// <param name="numFracBits">The number of fractional bits used in the representation.</param>
        /// <returns></returns>
        public static string getFixedPointRepresentation(double input, int numIntBits, int numFracBits)
        {
            bool isNeg = false;

            if (input < 0)
            {
                isNeg = true;
                input *= -1;
            }

            /*For convenience, numFracBits should be negative*/
            if (numFracBits > 0)
            {
                numFracBits *= -1;
            }

            string fpString = "0";
            double mark = Math.Pow(2, numIntBits - 1);

            /*Range check*/
            if (input > 2*mark)
            {
                throw new Exception(String.Format("Error in Utilities.getFixedPointRepresentation: Argument {0} cannot be represented with {1} integer bits.", input, numIntBits));
            }

            for (int i = numIntBits - 1; i >= numFracBits; i--)
            {
                if (input >= mark)
                {
                    fpString = fpString + "1";
                    input -= mark;
                }
                else
                {
                    fpString = fpString + "0";
                }

                mark /= 2;
            }

            if (!isNeg)
            {
                return fpString;
            }

            /*Flip all bits and add one for negative numbers*/
            char[] fp_neg = new char[fpString.Length];

            bool foundFirstOne = false;
            for (int i = fpString.Length - 1; i >= 0; i--)
            {
                if (fpString[i] == '1')
                {
                    if (!foundFirstOne)
                    {
                        foundFirstOne = true;
                        fp_neg[i] = fpString[i]; 
                    }
                    else
                    {
                        fp_neg[i] = '0';
                    }
                }
                else
                {
                    if (foundFirstOne)
                    {
                        fp_neg[i] = '1';
                    }
                    else
                    {
                        fp_neg[i] = '0';
                    }
                }
            }

            return new string(fp_neg);
        }

        /// <summary>
        /// Returns the sign extended two's complement representation of a number, extended to 'length' bits
        /// </summary>
        /// <param name="input">The number for which to compute the two's complement</param>
        /// <param name="length">The number of bits to use in the representation</param>
        /// <returns>The two's complement representation</returns>
        public static string getTwosComplement(int input, int length)
        {
            bool isNeg = (input < 0);
            string s = getTwosComplement(input);
            string tc = "";
            for (int i = s.Length; i < length; i++)
            {
                if (!isNeg)
                {
                    tc += "0";
                }
                else
                {
                    tc += "1";
                }
            }
            tc += s;
            if (tc.Length > length)
            {
                return tc.Substring(1, length);
            }
            return tc;
        }

        /// <summary>
        /// Computes the two's complement representation of a number
        /// </summary>
        /// <param name="input">The number for which to compute the two's complement representation</param>
        /// <returns>The two's complement representation of the number</returns>
        public static string getTwosComplement(int input)
        {
            if (input == 0)
            {
                return "0";
            }

            bool isNeg = (input < 0);
            input = Math.Abs(input);

            string tc = "";
            int mask = 0x01;
            while(mask <= input)
            {
                if ( (input & mask) != 0)
                {
                    tc = "1" + tc;
                }
                else
                {
                    tc = "0" + tc;
                }

                mask = mask << 1;
            }

            tc = "0" + tc;
            if (!isNeg)
            {
                return tc;
            }

            char[] tc_neg = new char[tc.Length];

            if (isNeg)
            {
                bool foundFirstOne = false;
                for (int i = tc.Length - 1; i >= 0; i--)
                {
                    if (tc[i] == '1')
                    {
                        if (!foundFirstOne)
                        {
                            foundFirstOne = true;
                            tc_neg[i] = tc[i]; 
                        }
                        else
                        {
                            tc_neg[i] = '0';
                        }
                    }
                    else
                    {
                        if (foundFirstOne)
                        {
                            tc_neg[i] = '1';
                        }
                        else
                        {
                            tc_neg[i] = '0';
                        }
                    }
                }
            }

            return new string(tc_neg);
        }

        /// <summary>
        /// Computes the number of bits necessary for a signed two's complement representation of a number
        /// </summary>
        /// <param name="baseTenNumber">The number for which to compute the number of bits</param>
        /// <returns>the number of bits necessary to represent the number in a signed, two's complement manner</returns>
        public static int getNumSignedBits(int baseTenNumber)
        {
            return getNumUnsignedBits(baseTenNumber) + 1;
        }

        /// <summary>
        /// Computes the number of bits necessary for an unsigned two's complement representation of a number
        /// </summary>
        /// <param name="baseTenNumber">The number for which to compute the number of bits</param>
        /// <returns>the number of bits necessary to represent the number in an unsigned, two's complement manner</returns>
        public static int getNumUnsignedBits(int baseTenNumber)
        {
            /*Check for non-negative argument*/
            baseTenNumber = Math.Abs(baseTenNumber);

            /*Zero still requires one bit*/
            if (baseTenNumber == 0)
            {
                return 1;
            }

            int numBits = 0;
            while(baseTenNumber > 0)
            {
                numBits++;
                baseTenNumber = baseTenNumber >> 1;
            }
            return numBits;
        }

        /// <summary>
        /// Computes the number of bits needed to represent a n-digit signed integer in two's complement form
        /// </summary>
        /// <param name="baseTenDigits">The number of base 10 digits</param>
        /// <returns>the number of bits needed for a signed, two's complement representation</returns>
        public static int getBusWidth(int baseTenDigits)
        {
            /*Get the maximum number with baseTenDigits digits*/
            int largestNumber = Convert.ToInt32(Math.Pow(10, baseTenDigits) - 1);
            return getNumSignedBits(largestNumber);
        }

        /// <summary>
        /// This function retreives the description of an enumeration member
        /// We are using it as a custom toString() function.
        /// </summary>
        /// <remarks> This is adapted from code produced from http://stackoverflow.com/questions/479410/enum-tostring-with-user-friendly-strings </remarks>
        /// <typeparam name="T">An enum type (VHDLDataType, etc.)</typeparam>
        /// <param name="enumerationVal">A particular value</param>
        /// <returns>The description attached to the enum (generally a printable string)</returns>
        public static string GetDescription<T>(this T enumerationVal)
            where T : struct
        {
            Type typeOfArg = enumerationVal.GetType();
            if (!typeOfArg.IsEnum)
            {
                throw new ArgumentException("Argument is not an enum (line 95, Utilities.cs)");
            }

            MemberInfo[] memberInfo = typeOfArg.GetMember(enumerationVal.ToString());
            if (memberInfo != null && memberInfo.Length > 0)
            {
                object[] attributes = memberInfo[0].GetCustomAttributes(typeof(DescriptionAttribute), false);

                if (attributes != null && attributes.Length > 0)
                {
                    return ((DescriptionAttribute)attributes[0]).Description;
                }
            }

            return enumerationVal.ToString();
        }
    }
}
