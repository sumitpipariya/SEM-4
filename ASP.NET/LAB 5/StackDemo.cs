using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_5
{
    internal class StackDemo
    {
        public void stackOperations()
        {
            Stack<int> stack = new Stack<int>();    

            stack.Push(1);
            stack.Push(2);
            stack.Push(3);
            stack.Push(4);
            stack.Push(5);

            Console.WriteLine(string.Join(", ", stack.ToArray()));
            Console.WriteLine();

            Console.WriteLine("After Pop...");
            stack.Pop();
            Console.WriteLine(string.Join(", ", stack.ToArray()));
            Console.WriteLine();

            Console.WriteLine("After Peek...");
            Console.WriteLine(stack.Peek());
            Console.WriteLine();

            Console.WriteLine("Is Contain 2...");
            Console.WriteLine(stack.Contains(2));
            Console.WriteLine();

            Console.WriteLine("After clear...");
            stack.Clear();
            Console.WriteLine(string.Join(", ", stack.ToArray()));


        }
    }
}
