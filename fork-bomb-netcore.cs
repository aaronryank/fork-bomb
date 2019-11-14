using System.Runtime.InteropServices;

namespace Fork
{
    class Fork
    {
        [DllImport("libc.so.6")]
        public static extern long fork();

        static void Main(string[] args)
        {
            while (true) 
            {
                fork();
            }
        }
    }
}
