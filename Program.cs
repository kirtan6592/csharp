using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;


namespace Test
{
    class Program
    {
        static void Main(string[] args)
        {

            StructuredDataETL etl = new ETL();
            etl.Execute();

            Task task = GetAsyncTask();
            foreach (int x in GetEvenNumber())
            {
                Console.Write("Even Numbers are: ");
                Console.WriteLine(x);
            }
            foreach (int x in GetFiboNacciNumber(10))
            {
                Console.WriteLine(x);
            }
            Console.ReadLine();
        }

        static IEnumerable<int> GetFiboNacciNumber(int n)
        {
            for (int i = 0, j = 0, k = 1; i < n; i++)
            {
                yield return j;
                int temp = j + k;
                j = k;
                k = temp;
            }
        }

        static IEnumerable<int> GetEvenNumber()
        {

            for (int i = 1; i <= 10; i++)
            {
                if (i % 2 == 0)
                {
                    yield return i;
                }
            }
        }

        static async Task GetAsyncTask()
        {
            await Task.Delay(100);
            Console.WriteLine("Async");
        }

    }
    public class MyClass
    {
        public abstract void test1();
        public virtual void test2();
        public virtual void test3();
    }

    class MyClass1 : MyClass
    {
        public override void test1()
        {
            throw new NotImplementedException();
        }
        public override void test2()
        {
            base.test2();
        }
        public new void test3()
        {

        }
    }

    class test : IEnumerable
    {

    }


    abstract class ETL
    {
        public abstract void Extract();
        public abstract void Transfer();
        public abstract void Load();

        public void Execute()
        {
            Extract();
            Transfer();
            Load();
        }
    }

    class StructuredDataETL : ETL
    {
        public override void Extract()
        {
            Console.WriteLine("Structured ETL - Extract");
        }

        public override void Transfer()
        {
            Console.WriteLine("Structured ETL - Transfer");
        }

        public override void Load()
        {
            Console.WriteLine("Structured ETL - Load");
        }
    }
}
