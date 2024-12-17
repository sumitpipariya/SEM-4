using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_5
{
    internal class QueueDemo
    {
        public void demoQueue()
        {
            Queue<int> queue = new Queue<int>();

            queue.Enqueue(1);
            queue.Enqueue(2);
            queue.Enqueue(3);
            queue.Enqueue(4);
            queue.Enqueue(5);
            Console.WriteLine("ALL Element is : ");
            Console.WriteLine(string.Join(", ", queue.ToArray()));
            Console.WriteLine();

            Console.WriteLine("After Dequque : ");
            queue.Dequeue();
            Console.WriteLine(string.Join(", ", queue.ToArray()));
            Console.WriteLine();

            Console.WriteLine("After Peek: ");
            Console.WriteLine(queue.Peek());
            Console.WriteLine();

            Console.WriteLine("Is Contain 3...");
            Console.WriteLine(queue.Contains(3));
            Console.WriteLine();

            Console.WriteLine("After clear...");
            queue.Clear();
            Console.WriteLine(string.Join(", ", queue.ToArray()));

        }
    }
}
