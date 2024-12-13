using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_4
{
    internal class AreaOfShapes
    {
        public void Area(int l)
        {
            Console.WriteLine("Area of Square is : "+ (l*l));
        }

        public void Area(int l, int b)
        {
            Console.WriteLine("Area of Rectangle is : " + (l * b));
        }

        public void Area(float r)
        {
            Console.WriteLine("Area of Circle is : " + (Math.PI * r * r));
        }
    }
}
