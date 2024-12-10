using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_3
{
    interface Shape
    {
        public void Circle(int r);
        public void Triangle(int b, int h);
        public void Square(int h);

    }
    class Area : Shape
    {
        public void Circle(int r)
        {
            Console.WriteLine("Area of Circle is: "+ (Math.PI*r*r));
        }
        public void Triangle(int b, int h)
        {
            Console.WriteLine("Area of Triangle is: "+ (0.5*b*h));
        }
        public void Square(int h)
        {
            Console.WriteLine("Area of Square is: "+ (h*h));
        }

    }
}
