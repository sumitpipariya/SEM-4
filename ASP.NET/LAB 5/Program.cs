using System;
using LAB_5;

public class Program
{
    public static void Main(string[] args)
    {
        Console.Write("Enter the program no: ");
        int n = Convert.ToInt32(Console.ReadLine());

        switch (n)
        {
            case 1:
                ArrayListDemo arrayListDemo = new ArrayListDemo();
                arrayListDemo.studentName();
                break;

            case 2:
                ListDemo listDemo = new ListDemo();
                listDemo.studentName();
                break;

            case 3:
                StackDemo stackDemo = new StackDemo();
                stackDemo.stackOperations();
                break;

            case 4:
                QueueDemo queueDemo = new QueueDemo();
                queueDemo.demoQueue();
                break; 

            case 5:
                DictionaryDemo dictionaryDemo = new DictionaryDemo();   
                dictionaryDemo.demoDictionary();
                break;

            case 6:
                HashtableDemo hashtableDemo = new HashtableDemo();
                hashtableDemo.demoHase();
                break;
        }
    }
}