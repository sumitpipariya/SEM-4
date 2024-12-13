using System;
using LAB_3;

class Program
{
    public static void Main(string[] args)
    {
        Console.Write("Enter the Program number: ");
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
                ab.SumOfThree(1, 2, 3);
                break;

            case 4:
                Calc calc = new Calc();
                calc.sum(10, 5);
                calc.substraction(10, 5);
                break;

            case 5:
                StringClass sc = new StringClass();
                sc.MethodsOfString();
            break;

            case 6:
                UpperLower ul = new UpperLower();
                ul.Method();
            break;

            case 7:
                Area ar = new Area();
                ar.Circle(10);
                ar.Square(10);
                ar.Triangle(10,20);
            break;

            case 8:
                ExceptionDemo ed = new ExceptionDemo();
                ed.ExceptionDemoMethod();
            break;

            case 9:
                StringLength stringLength = new StringLength();
                stringLength.FindLength();
            break;

            case 10:
                ChangeCase changeCase = new ChangeCase();
                changeCase.ChangeCharter();
                break;
        }
    }
}