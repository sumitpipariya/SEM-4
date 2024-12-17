using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_5
{
    internal class ArrayListDemo
    {
        public void studentName()
        {
            ArrayList arrayList = new ArrayList();

            arrayList.Add("Darshan");
            arrayList.Add("University");
            arrayList.Add("Rajkot");
            arrayList.Add("Gujarat");
            arrayList.Add("Gujarat");
            arrayList.Add("Gujarat");
            arrayList.Add("Gujarat");
            arrayList.Add("Gujarat");

            Console.WriteLine(string.Join(" ,", arrayList.ToArray()));

            Console.WriteLine("After remove University");
            arrayList.Remove("University");
            Console.WriteLine(string.Join(" ,", arrayList.ToArray()));

            Console.WriteLine("After index is 2 and range is 3 ");
            arrayList.RemoveRange(2,3);
            Console.WriteLine(string.Join(" ,", arrayList.ToArray()));

            Console.WriteLine("After clear...");
            arrayList.Clear();
            Console.WriteLine(string.Join(" ,", arrayList.ToArray()));

        }
    }
}
