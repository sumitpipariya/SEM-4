using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_3
{
    internal class Program1
    {
        public void Divide()
        {
            try
            {
                Console.WriteLine("Enter the number 1: ");
                int a = Convert.ToInt32(Console.ReadLine());


                Console.WriteLine("Enter the number 2: ");
                int b = Convert.ToInt32(Console.ReadLine());

                Console.WriteLine("Division is: "+a/b);
            }
            catch(Exception ex) {
            
                    Console.WriteLine(ex.Message);
            }
        }
    }
}
