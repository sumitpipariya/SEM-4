using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_2
{
    internal class Rectangle
    {
        int Height;
        int Width;

        public Rectangle(int height, int width)
        {
            Height = height;
            Width = width;
        }

        public void DispalyArea()
        {
            Console.WriteLine("Area of Rectangle is :" + Height*Width);
        }
    }
}
