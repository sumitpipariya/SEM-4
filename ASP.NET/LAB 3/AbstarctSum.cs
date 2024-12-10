using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_3
{
    
        public abstract class Sum
        {
            public abstract void SumOfTwo(int x,int y);
            public abstract void SumOfThree(int x, int y, int z);
        }

        public class Abc : Sum
        {
            public override void SumOfTwo(int x, int y)
            {
                Console.WriteLine("Sum of Two Variable is:" + (x+y));
            }

            public override void SumOfThree(int x, int y, int z)
            {
                Console.WriteLine("Sum of Three Variable is:" + (x + y + z));
            }
        }

    }

