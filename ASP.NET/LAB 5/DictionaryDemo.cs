using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_5
{
    internal class DictionaryDemo
    {
        public void demoDictionary()
        {
                Dictionary<int,String>  keyValuePairs = new Dictionary<int,String>();

                keyValuePairs.Add(1, "ABC");
                keyValuePairs.Add(2, "BCD");
                keyValuePairs.Add(3, "EFG");
                keyValuePairs.Add(4, "HIJ");
                keyValuePairs.Add(5, "KLM");

                Console.WriteLine("ALL Element is : ");
                Console.WriteLine(string.Join(", ", keyValuePairs.ToArray()));
                Console.WriteLine();

                Console.WriteLine("Remove 2nd element : ");
                keyValuePairs.Remove(2);
                Console.WriteLine(string.Join(", ", keyValuePairs.ToArray()));
                Console.WriteLine();

                Console.WriteLine("Check key : ");
                Console.WriteLine(keyValuePairs.ContainsKey(3));
                Console.WriteLine();

                Console.WriteLine("Check value : ");
                Console.WriteLine(keyValuePairs.ContainsValue("ABC"));
                Console.WriteLine();

                Console.WriteLine("Clear all element: ");
                keyValuePairs.Clear();
                Console.WriteLine(string.Join(", ", keyValuePairs.ToArray()));

        }
    }
}
