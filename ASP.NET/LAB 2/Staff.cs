using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_2
{
    internal class Staff
    {

        string Name;
        string Department;
        string Designation;
        int Experience;
        int Salary;

        public void GetStaffDetails()
        {

            Console.WriteLine("Enter the Name:");
            Name = Console.ReadLine();

            Console.WriteLine("Enter the Department:");
            Department = Console.ReadLine();

            Console.WriteLine("Enter the Designation:");
            Designation = Console.ReadLine(); ;

            Console.WriteLine("Enter the Experience:");
            Experience = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter the Salary:");
            Salary = Convert.ToInt32(Console.ReadLine());

        }
        public void DisplyStaffDetails()
        {
            if (Department.ToUpper() == "HOD");
            {
                Console.WriteLine("Name is :" + Name);
                Console.WriteLine("Salary is : " + Salary);
            }
            
        }

    }
}
