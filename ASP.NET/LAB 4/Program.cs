using System;
using LAB_4;

public class Programs
{
    public static void Main(string[] args)
    {
        Console.Write("Enter the Program Number: ");
        int n = Convert.ToInt32(Console.ReadLine());

        switch (n)
        {
            case 1:
                Addition add = new Addition();
                add.AddTwoNum(10, 20);
                add.AddTwoNum(10.50f, 20.50f);
                break;

            case 2:
                Area a = new Area();
                
                Console.Write("Enter the Length: ");
                int l = Convert.ToInt32(Console.ReadLine());
                a.AreaCalculate(l);

                Console.Write("Enter the Length: ");
                int len = Convert.ToInt32(Console.ReadLine());

                Console.Write("Enter the Height: ");
                int b = Convert.ToInt32(Console.ReadLine());
                a.AreaCalculate(len,b); ;

                break;

            case 3:
                RBI rbi = new RBI();
                rbi.calculateInterest(10,10.5f,5);

                ICICI iCICI = new ICICI();
                iCICI.calculateInterest(20,20,10);
                break;

            case 4:
                Hospital hospital = new Apollo();
                hospital.HospitalDetails();

                Hospital hospital1 = new Wockhardt();
                hospital1.HospitalDetails();
                break;

            case 5:
                AreaOfShapes areaOfShapes = new AreaOfShapes();

                Console.Write("Enter length: ");
                int ab = Convert.ToInt32(Console.ReadLine());

                Console.Write("Enter height: ");
                int h = Convert.ToInt32(Console.ReadLine());

                Console.Write("Enter Redius: ");
                float r = Convert.ToInt32(Console.ReadLine());

                areaOfShapes.Area(10);
                areaOfShapes.Area(10,20);
                areaOfShapes.Area(10.50f);
                break;

            case 6:
                BankAccount b1 = new BankAccount();
                b1.Deposite();
                b1.withdraw();
                break;
        }
    }
}