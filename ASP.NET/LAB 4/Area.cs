using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_4
{
    internal class Area
    {
        public void AreaCalculate(int l)
        {
            Console.WriteLine("Area is : "+ (l*l));
        }

        public void AreaCalculate(int len , int b)
        {
            Console.WriteLine("Area is : " + (len * b));
        }

    }
}
