using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_3
{
    internal class StringClass
    {
        public void MethodsOfString()
        {
            Console.Write("Enter the First string: ");
            string a = Console.ReadLine();
            
            Console.WriteLine("Length of String is:"+ a.Length);
            Console.WriteLine("Upper letter of String is:" + a.ToUpper());
            Console.WriteLine("Lower letter of String is:" + a.ToLower());

            Console.Write("Enter the Second string: ");
            string b = Console.ReadLine();
            Console.WriteLine("Concate of String is : " + (a +" "+ b));
        }
    }
}
