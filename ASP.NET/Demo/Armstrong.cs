using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo
{
    internal class Armstrong
    {
        public void p1()
        {
            Console.Write("Enter the number: ");
            int n = Convert.ToInt32(Console.ReadLine());
            int a = n;
            int n1;

            string number = Convert.ToString(n);
            int len = number.Length;

            int ans = 0;

            while(a!= 0)
            {
                n1 = a % 10;
                ans = (int)(ans + Math.Pow(n1, len));
                a = a / 10;
            }

            if (n == ans)
            {
                Console.WriteLine("Armstrong Number");
            }
            else
            {
                Console.WriteLine("NOT Armstrong Number");
            }

        }
    }
}
