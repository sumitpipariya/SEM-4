    using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_2
{
    internal class Bank_Account
    {
        int Account_No;
        string Email;
        string User_Name;
        string Account_Type;
        int Account_Balance;

        public void GetAccountDetails()
        {
            Console.WriteLine("Enter Account_No: ");
            Account_No = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter the Email: ");
            Email = Console.ReadLine();

            Console.WriteLine("Enter the User_Name: ");
            User_Name = Console.ReadLine();

            Console.WriteLine("Enter the Account_Type: ");
            Account_Type = Console.ReadLine();

            Console.WriteLine("Enter the Account_Balance: ");
            Account_Balance = Convert.ToInt32(Console.ReadLine());
        }

        public void DisplayAccountDetails()
        {
            Console.WriteLine("Account_No is :" + Account_No);
            Console.WriteLine("User_Name is : "+ User_Name);
            Console.WriteLine("Email is :" + Email);
            Console.WriteLine("Account_Type is :"+ Account_Type);
            Console.WriteLine("Account_Balance is :" + Account_Balance);
        }

    }
}
