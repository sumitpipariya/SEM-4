using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_4
{
    public class Hospital
    {
        public virtual void HospitalDetails()
        {
            System.Console.WriteLine("This is Hospital Class...");
        }
    }

    public class Apollo : Hospital
    {
        public override void HospitalDetails()
        {
            System.Console.WriteLine("This is Allolo Class...");
        }
    }

    public class Wockhardt : Hospital
    {
        public override void HospitalDetails()
        {
            System.Console.WriteLine("This is Wockhardt Class...");
        }
    }

    public class Gokul_Superspeciality : Hospital
    {
        public override void HospitalDetails()
        {
            System.Console.WriteLine("This is Gokul_Superspeciality Class...");
        }
    }
}
