using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NPOI.SS.Formula.Functions;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace LAB_2
{
    internal class Account_Details
    {
        protected int rate;    
        protected int year;      
        protected int principal;

        public void GetDetails()
        {
            Console.Write("Enter Principal Amount: ");
            principal = Convert.ToInt32(Console.ReadLine());

            Console.Write("Enter Rate of Interest: ");
            rate = Convert.ToInt32(Console.ReadLine());

            Console.Write("Enter Time Period : ");
            year = Convert.ToInt32(Console.ReadLine());
        }

    }

    class Interest : Account_Details
    {
        
        public double CalculateIntress()
        {
            return rate * year *principal /100.0;
        }
        public void DisplayInterest()
        {
            double totalInterest = CalculateIntress();
            Console.WriteLine($"\nTotal Interest: {totalInterest}");
        }
    }

}
