using System;
using System.Security.Cryptography.X509Certificates;
using LAB_2;
using NPOI.SS.Formula.Functions;

class Program
{
    public static void Main()
    {
        Console.WriteLine("Enter the number for Program...");
        int n = Convert.ToInt32(Console.ReadLine());

        switch(n)
        {
            case 1:
                Candidate c = new Candidate();
                c.GetCandidateDetails();
                c.DisplayCandidateDetails();
            break;

            case 2:
                Staff[] s = new Staff[5];
                for (int i = 0;s.Length > i; i++)
                {
                    s[i] = new Staff();
                    s[i].GetStaffDetails();
                }
                for (int i = 0; s.Length > i; i++)
                {
                    s[i].DisplyStaffDetails();
                }
                break;

            case 3:
                Bank_Account ba = new Bank_Account();
                ba.GetAccountDetails();
                ba.DisplayAccountDetails();
            break;

            case 4:
                    Console.WriteLine("Enter the Enrollment_No:");
                    int Enrollment_No = Convert.ToInt32(Console.ReadLine());

                    Console.WriteLine("Enter the Student_Name:");
                    string Student_Name = Console.ReadLine();

                    Console.WriteLine("Enter the Semester:");
                    int Semester = Convert.ToInt32(Console.ReadLine());

                    Console.WriteLine("Enter the CPI:");
                    float CPI = float.Parse(Console.ReadLine());

                    Console.WriteLine("Enter the SPI:");
                    float SPI = float.Parse(Console.ReadLine());

                Student student = new Student(Enrollment_No, Student_Name, Semester, CPI, SPI);
                student.DisplayStudentDetails();

                break;

            case 5:
                Console.WriteLine("Enter the Length: ");
                int length = Convert.ToInt32(Console.ReadLine());

                Console.WriteLine("Enter the Weidth: ");
                int weidth = Convert.ToInt32(Console.ReadLine());

                Rectangle r = new Rectangle(length, weidth);
                r.DispalyArea();
                break;

            case 6:
                Interest interest = new Interest();

                interest.GetDetails();
                interest.DisplayInterest();
                break;
        }
        
    }
}