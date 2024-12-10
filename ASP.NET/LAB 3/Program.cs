using System;
using LAB_3;

class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("Enter the Program number: ");
        int n = Convert.ToInt32(Console.ReadLine());

        switch (n)
        {
            case 1:
                Program1 p = new Program1();
                p.Divide();
            break;

            case 2:
                Arrays a = new Arrays();
                a.ReadNo();
            break;

            case 3:
                Abc ab = new Abc();
                ab.SumOfTwo(1, 2);
                ab.SumOfThree(1,2,3);
            break;

            case 4:
                Calc calc = new Calc();
                calc.sum(10, 5);
                calc.substraction(10,5);
            break;
        }
    }
}