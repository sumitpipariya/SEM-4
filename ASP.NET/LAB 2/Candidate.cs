using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_2
{
    internal class Candidate
    {
        int ID;
        string Name;
        int Age;
        int Weight;
        int Height;

        public void GetCandidateDetails()
        {
            Console.WriteLine("Enter the Id:");
            ID = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter the Name:");
            Name = Console.ReadLine();

            Console.WriteLine("Enter the Age:");
            Age = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter the Weight:");
            Weight = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter the Height:");
            Height = Convert.ToInt32(Console.ReadLine());
        }
        public void DisplayCandidateDetails()
        {
            Console.WriteLine("Name is :" + Name);
            Console.WriteLine("ID is:" +ID);
            Console.WriteLine("Age is :"+ Age);
            Console.WriteLine("Weight is :"+ Weight);
            Console.WriteLine("Height is : "+ Height);
        }

    }
}
