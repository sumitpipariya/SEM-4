using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAB_4
{
    internal class BankAccount
    {
        int amount;
        private int ans;

        public BankAccount() {
            
            Console.WriteLine("Enter your Name: ");
            string name = Console.ReadLine();

            Console.Write("Enter your Balance: ");
            amount = Convert.ToInt32(Console.ReadLine());
        }
        public void Deposite()
        {
            Console.WriteLine("Enter the Deposite: ");
            int dep = Convert.ToInt32(Console.ReadLine());

            amount = amount + dep;
            Console.WriteLine("Total amount is: "+ amount);
        }

        public void withdraw()
        {
            Console.Write("Enter the withdraw: ");
            int with = Convert.ToInt32(Console.ReadLine());

            int total = amount - with;

            if (total > 0)
            {
                amount = amount - with;
                Console.Write("Total amount is: " + amount);
            }
            else
            {
                Console.WriteLine("You can withdraw only :" + amount);
            }
            
        }

    }
}
