using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo
{
    internal class ArrDemo
    {
        public void p2()
        {
            Console.Write("Enter the Size of array: ");
            int n = Convert.ToInt32(Console.ReadLine());

            int[,] arr = new int[n,n];

            for(int i = 0; i < n; i++)
            {
                for(int j = 0; j < n; j++)
                {
                    arr[i, j] = Convert.ToInt32(Console.ReadLine());
                }
            }


            for (int i = 0; i < n; i++)
            {
                for (int j = 0; j < n; j++)
                {
                    Console.Write(arr[i, j]+" ");
                 
                }
                Console.WriteLine();
            }

            int sum = 0;


            for (int i = 0; i < n; i++)
            {
                for (int j = 0; j < n; j++)
                {
                    if (i == j)
                    {
                        sum = sum + arr[i, j];
                    }
                    
                }
            }

            Console.WriteLine("Sum of Diagonal is : "+sum);

            


        }
    }
}
