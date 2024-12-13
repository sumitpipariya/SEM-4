using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LAB_4;

namespace LAB_4
{
    public class RBI
    {
        public virtual void calculateInterest(int p, float r, int t)
        {
            Console.WriteLine("Simple of HDFC intrest is :" + (p*r*t/100));
        }
    }
    public class HDFC : RBI
    {
        public override void calculateInterest(int p, float r, int t)
        {
            Console.WriteLine("Simple of RBI intrest is :" + (p * r * t / 100));
        }
    }

    public class SBI : RBI {
        public override void calculateInterest(int p, float r, int t)
        {
            Console.WriteLine("Simple of SBI intrest is :" + (p * r * t / 100));
        }

    }

    public class ICICI : RBI
    {
        public override void calculateInterest(int p, float r, int t)
        {
            Console.WriteLine("Simple of ICICI intrest is :" + (p * r * t / 100));
        }
    }
}

