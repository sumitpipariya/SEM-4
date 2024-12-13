using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_3
{
    internal class ChangeCase
    {
        public void ChangeCharter()
        {
            Console.Write("Enter a character: ");
            char c = Convert.ToChar(Console.ReadLine());

            if (char.IsLetter(c))
            {
                if (char.IsLower(c))
                {
                    char c1 = char.ToUpper(c);
                    Console.WriteLine("Uppercase is: " + c1);
                }
                else
                {
                    char c2 = char.ToLower(c);
                    Console.WriteLine("Lowercase is: " + c2);
                }
            }
            else
            {
                Console.WriteLine("Invalid input! Please enter the character.");
            }

        }
    }
}