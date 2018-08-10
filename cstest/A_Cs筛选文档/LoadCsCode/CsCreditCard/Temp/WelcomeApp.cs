//例16-2 本例产生控制台程序WelcomeApp.exe
using System;
using zh.Code.WelcomeMsg;
namespace zh.Code.test
{
    public class WelcomeApp
    {
        static void Main()
        {
            WelcomeMessage w = new WelcomeMessage();
            w.Show();
            w.Msg = "Hello ";
            System.Console.WriteLine("请输入你的名字！");
            w.Show(Console.ReadLine());
        }
    }
}

