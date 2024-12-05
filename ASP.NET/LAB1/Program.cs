using System;
using System.Diagnostics;
using System.Xml.Linq;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Enter the number for The Programs...");
        int n = int.Parse(Console.ReadLine());

        switch (n)
        {
            case 1:
                Program1();
                break;

            case 2:
                Program2();
                break;

            case 3:
                Program3(); 
                break;

            case 4:
                Program4();
                break;

            case 5:
                Program5();
                break;

            case 6:
                Program6();
                break;

            case 7:
                Program7();
                break;

            case 8:
                Program8();
                break;

            case 9:
                Program9();
                break;

            case 10:
                Program10();
                break;

            default:
                Console.WriteLine("Enter valid Nuber ....");
                break;
                    
        }
    }
    //1. Write a program to print your name, address, contact number & city.

    public static void Program1()
    {
        string name = "Sumit Pipariya";
        string addrss = "Morboi Road, Rajkot";
        double contact = 9016515595;
        string city = "Rajkot";

        Console.WriteLine("Name is : "+name);
        Console.WriteLine("Address is : " + addrss);
        Console.WriteLine("contact is : " + contact);
        Console.WriteLine("City is : " + city);
    }

    //2. Write a program to get two numbers from user and print those two numbers.
    public static void Program2()
    {
        Console.WriteLine("Enter the Number 1 : ");
        int a = Convert.ToInt32(Console.ReadLine());
        Console.WriteLine("Enter the Number 2 : ");
        int b = Convert.ToInt32(Console.ReadLine());

        Console.WriteLine("You Entered : "+a);
        Console.WriteLine("You Entered : " +b);
    }

    //3. Write program to prompt a user to input his/her name and country name and then output will be shown as given: Hello<yourname> from country <countryname>

    public static void Program3()
    {
        Console.WriteLine("Enter your name : ");
        string name = Console.ReadLine();
        Console.WriteLine("Enter your city : ");
        string city = Console.ReadLine();
        Console.WriteLine("Hello "+name+" from "+city);
    }

    //4. Write a program to calculate the size of the area in square-feet based on Specified length and width.

    public static void Program4()
    {
        Console.WriteLine("Enter the length : ");
        int len = Convert.ToInt32(Console.ReadLine());
        Console.WriteLine("Enter the width : ");
        int wid = Convert.ToInt32(Console.ReadLine());

        Console.WriteLine("Area is : " + len * wid);
    }

    //5. Write a program to calculate area of Square, Rectangle and Circle.

    public static void Program5()
    {
        Console.WriteLine("Enter the length : ");
        int len = Convert.ToInt32(Console.ReadLine());
        Console.WriteLine("Enter the width : ");
        int wid = Convert.ToInt32(Console.ReadLine());
        Console.WriteLine("Enter the Redious");
        int redious = Convert.ToInt32(Console.ReadLine());

        Console.WriteLine("Area of Squrae is  : " + len * len);
        Console.WriteLine("Area of Rectangle is  : " + len * len);
        Console.WriteLine("Area of Circle is  : " + 3.14 * redious * redious);
    }

    //6. Write a program to calculate Celsius to Fahrenheit and vice-versa using function.
    public static void Program6()
    {
        Console.WriteLine("Enter the number : ");
        int n = Convert.ToInt32(Console.ReadLine());

        if(n == 1)
        {
            Console.WriteLine("Enter the Celsius : ");
            int c = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Ferinhit is : "+ c*1.8+32);
        }

        else if (n == 2)
        {
            Console.WriteLine("Enter the Ferinhit : ");
            int f = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Celcious  is : " + (f-32)*1.8);
        }
        else
        {
            Console.WriteLine("Enter valid number...");
        }
    }

    //7. Write a program to find out Simple Interest using function. (I = PRN/100)
    public static void Program7()
    {
        Console.WriteLine("Enter the persentage");
        int p = Convert.ToInt32(Console.ReadLine());

        Console.WriteLine("Enter the rate");
        int r = Convert.ToInt32(Console.ReadLine());

        Console.WriteLine("Enter the year");
        int n = Convert.ToInt32(Console.ReadLine());

        Console.WriteLine("Simple intrest is : "+ p*r*n/100);
    }

    //8. Write a program to create a Simple Calculator for two numbers (Addition, Multiplication, Subtraction, Division) [Also using if…else &Switch Case]

    public static void Program8()
    {

        Console.WriteLine("Enter the number 1 : ");
        int a = Convert.ToInt32(Console.ReadLine());

        Console.WriteLine("Enter the number 2 : ");
        int b = Convert.ToInt32(Console.ReadLine());

        Console.WriteLine("Addition is : "+ (a+b));
        Console.WriteLine("Substraction  is : " + (a-b));
        Console.WriteLine("Multiplication  is : " + (a * b));
        Console.WriteLine("Division  is : " + (a/b));
    }

    //9. Write a program to Swapping without using third variable.

    public static void Program9()
    {

        Console.WriteLine("Enter the number 1 : ");
        int a = Convert.ToInt32(Console.ReadLine());

        Console.WriteLine("Enter the number 2 : ");
        int b = Convert.ToInt32(Console.ReadLine());

        a = a+b;
        b = a - b;
        a = a-b;

        Console.WriteLine("a is : "+a);
        Console.WriteLine("b is : "+b);
         
    }

    //10.Write a program to find maximum numbers from given 3 numbers using ternary operator.

    public static void Program10()
    {

        Console.WriteLine("Enter the number 1 : ");
        int a = Convert.ToInt32(Console.ReadLine());

        Console.WriteLine("Enter the number 2 : ");
        int b = Convert.ToInt32(Console.ReadLine());

        Console.WriteLine("Enter the number 3 : ");
        int c = Convert.ToInt32(Console.ReadLine());


        int max = (a > b) ? (a > c) ? a : c : (b > c) ? b : c;
        Console.WriteLine("Max is : "+max);

    }

}