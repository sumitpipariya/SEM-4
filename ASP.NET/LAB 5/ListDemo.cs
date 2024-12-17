using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_5
{
    internal class ListDemo
    {
        public void studentName()
        {
            List<string> list = new List<string>();

            list.Add("Darshan");
            list.Add("University");
            list.Add("Rajkot");
            list.Add("Gujarat");
            list.Add("Darshan");
            list.Add("University");

            Console.WriteLine(string.Join(", ",list.ToArray()));
            Console.WriteLine();

            Console.WriteLine("After remove Darshan...");
            list.Remove("Darshan");
            Console.WriteLine(string.Join(", ", list.ToArray()));
            Console.WriteLine();

            Console.WriteLine("After remove intdex 1 to 3...");
            list.RemoveRange(1,3);
            Console.WriteLine(string.Join(", ", list.ToArray()));
            Console.WriteLine();

            Console.WriteLine("After clear..");
            list.Clear();
            Console.WriteLine(string.Join(", ", list.ToArray()));

        }
    }
}
