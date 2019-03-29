using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Random;

namespace niu1
{
    class Program
    {
        class Dog
        {
            public void Fa(int n)
            {
                int s;
                int m1, m2, m3, d;
                Random ran = new Random();
                for (int i = 0; i < n; i++)
                {
                    m1 = ran.Next(1, 100);
                    m2 = ran.Next(1, 100);
                    m3 = ran.Next(1, 100);
                    d = ran.Next(1, 8);
                    switch (d)
                    { 
                        case 1:
                    s = m1 + m2 + m3;
                    Console.WriteLine(s +"="+m1+"+"+m2+"+"+m3);
                    break;
                case 2:
                    s = m1 - m2 - m3;
                    Console.WriteLine(s + "=" + m1 + "-" + m2 + "-"+m3);
                    break;
                case 3:
                    s = m1 - m2 + m3;
                    Console.WriteLine(s + "=" + m1 + "-" + m2 + "+"+m3);
                    break;
                case 4:
                    s = m1 * m2 - m3;
                    Console.WriteLine(s + "=" + m1 + "*" + m2 + "-"+m3);
                    break;
                case 5:
                    s = m1 * m2 + m3;
                    Console.WriteLine(s + "=" + m1 + "*" + m2 + "+"+m3);
                    break;
                case 6:
                    s = m1 / m2 + m3;
                    Console.WriteLine(s + "=" + m1 + "+" + m2 + "+"+m3);
                    break;
                case 7:
                    s = m1 + m2 /m3;
                    Console.WriteLine(s + "=" + m1 + "+" + m2 + "/"+m3);
                    break;
                       // default:
                            Console.WriteLine("F");
                }
            
                }
            }
        }
        static void Main(string[] args)
        {
            int e; 
            Dog y = new Dog();
            e=int.Parse(Console.ReadLine());
            y.Fa(e);
            Console.ReadKey();
            }
    }
}
