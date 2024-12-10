using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_3
{
    internal class UpperLower
    {
        public void Method()
        {
            Console.Write("Enter the String: ");
            string a = Console.ReadLine();

            Console.WriteLine("Lower Letter is : "+ a.ToLower());

            Console.WriteLine("Upper Letter is : " + a.ToUpper());

        }
    }
}
