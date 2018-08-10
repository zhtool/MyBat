//例16-3.4
//MyMessage.cs //定义程序显示
using System;
namespace zh.MyMessage
{
    //定义矩形类
    public class Message
    {
        public void Begin()
        {
            Console.WriteLine("---Message---");
            Console.WriteLine("**********            **********");
            Console.WriteLine("*         *           *         *");
            Console.WriteLine("*********  *         *  *********");
            Console.WriteLine("*        *  *       *  *        *");
            Console.WriteLine("*         *  *     *  *         *");
            Console.WriteLine("*          *  *   *  *          *");
            Console.WriteLine("*           *  * *  *           *");
            Console.WriteLine("*            *  *  *            *");
            Console.WriteLine("*             *   *             *");
            Console.WriteLine("*              * *              *");
            Console.WriteLine("*               *               *");
            Console.WriteLine("*********************************");            
        
        }
        public bool Ask()
        {
            Console.WriteLine("Press 0 to exit the game");
            Console.WriteLine("Press any other key to continue the game");
            Console.WriteLine();
            int c = Console.Read();
            if (c == 48)
                return false;
            return true;
        }
    }   
}

