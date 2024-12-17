using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_5
{
    internal class HashtableDemo
    {
        public void demoHase()
        {
            Hashtable ht = new Hashtable();

            ht.Add(1, "ABC");
            ht.Add(2, "BCD");
            ht.Add(3, "EFG");
            ht.Add(4, "HIJ");
            ht.Add(5, "KLM");

            Console.WriteLine("ALL Element is : ");
           
            foreach (var item in ht.Keys)
            {
                Console.WriteLine(item+" = "+ ht[item]);
            }
            Console.WriteLine();

            Console.WriteLine("Remove 2nd element : ");
            ht.Remove(2);

            foreach (var item in ht.Keys)
            {
                Console.WriteLine(item + " = " + ht[item]);
            }
            Console.WriteLine();

            Console.WriteLine("Check key : ");
            Console.WriteLine(ht.ContainsKey(3));
            Console.WriteLine();

            Console.WriteLine("Check value : ");
            Console.WriteLine(ht.ContainsValue("ABC"));
            Console.WriteLine();

            Console.WriteLine("Clear all element: ");
            ht.Clear();
            foreach (var item in ht.Keys)
            {
                Console.WriteLine(item + " = " + ht[item]);
            }
            Console.WriteLine();

        }
    }
}
