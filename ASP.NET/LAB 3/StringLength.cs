using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_3
{
    internal class StringLength
    {
        public void FindLength()
        {
            Console.Write("Enter the string: ");
            string str = Console.ReadLine();

            string[] words = str.Split(' ');
            int maxLength = 0;

            foreach (string i in words)
            {
                if (i.Length > maxLength)
                {
                    maxLength = i.Length;
                }
            }

            Console.WriteLine("Max word length is : "+ maxLength);


        }
    }
}
