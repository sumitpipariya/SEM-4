using System;
using Demo;

public class Programs { 
    public static void Main(String[] args)
    {
        Console.Write("Enter Program number: ");
        int n = Convert.ToInt32(Console.ReadLine());

        switch (n)
        {
            case 1:
                Armstrong armstrong = new Armstrong();
                armstrong.p1();
                break;

            case 2:
                ArrDemo arrdemo = new ArrDemo();
                arrdemo.p2();
                break;

        }
    }
}