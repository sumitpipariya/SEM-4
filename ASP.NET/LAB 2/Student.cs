using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_2
{
    internal class Student
    {

        int Enrollment_No;
        string Student_Name;
        int Semester;
        float CPI;
        float SPI;

        public Student(int enrollmentNo, string studentName, int semester, float cpi, float spi)
        {
            Enrollment_No = enrollmentNo;
            Student_Name = studentName;
            Semester = semester;
            CPI = cpi;
            SPI = spi;
        }

        public void DisplayStudentDetails()
        {
            Console.WriteLine("Enrollment_No is : " + Enrollment_No);
            Console.WriteLine("Student_Name is : " + Student_Name);
            Console.WriteLine("Semester is : " + Semester);
            Console.WriteLine("CPI is : " + CPI);
            Console.WriteLine("SPI is : " + SPI);
        }

    }  
}
