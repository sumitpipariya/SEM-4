using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_3
{
    
    interface ICalculate {
        double sum(double x, double y);
        double substraction(double x, double y);    
    }

    class Calc : ICalculate
    {
        public double substraction(double x, double y)
        {
            return x - y;
        }

        public double sum(double x, double y)
        {
            return x + y;
        }

    }

}
