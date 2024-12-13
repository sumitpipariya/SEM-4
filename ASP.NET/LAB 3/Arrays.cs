using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_3
{
    internal class Arrays
    {
        public void ReadNo()
        {
            try
            {
                int[] a = new int[5];
                int i = 0;
                Console.WriteLine("Enter 5 numbers: ");
                while (true)
                {
                    a[i] = Convert.ToInt32(Console.ReadLine());
                    i++;
                }
            }
            catch (Exception ex)
            {

                Console.WriteLine(ex.Message);
            }
        }
    }
}
