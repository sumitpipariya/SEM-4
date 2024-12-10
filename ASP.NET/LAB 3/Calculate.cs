using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_3
{
    interface ICalculate
    {
        public void sum(double x, double y);
        public void substraction(double x, double y);
    }

    class Calc : ICalculate
    {
        public void substraction(double x, double y)
        {
            Console.WriteLine("Sutraction is :" + (x - y));
        }

        public void sum(double x, double y)
        {
            Console.WriteLine("Addtion is :" + (x + y));
        }

    }

}
