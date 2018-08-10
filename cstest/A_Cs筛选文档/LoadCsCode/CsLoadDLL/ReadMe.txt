
脚本功能：

  C#代码编译器编译.cs文件
  此脚本生成库文件及控制台文件，用以测试组件化代码
---------------------------------

操作方式：

  执行 loads.bat;
---------------------------------

运行环境：
  cmd
---------------------------------
 
备注：
WelcomeMessage.cs
//No1.此例产生WelcomeMessage.dll
using System;
namespace zh.Code.WelcomeMsg
{
    public class WelcomeMessage
    {
        string _Msg;
        public WelcomeMessage()
        { _Msg = "WelCome!"; }
        public string Msg
        {
            get { return _Msg; }
            set { _Msg = value; }
        }      
    }    
}

WelcomeApp.cs
//No2.本例产生控制台程序WelcomeApp.exe
using System;
using zh.Code.WelcomeMsg;
namespace zh.Code.test
{
    public class WelcomeApp
    {
        static void Main()
        {
            WelcomeMessage w = new WelcomeMessage();
            Console.WriteLine(w.Msg);
            System.Console.WriteLine("请输入你的名字！");
            string sInput = Console.ReadLine();
            w.Msg = "Welcome " + sInput;
            Console.WriteLine(w.Msg);
        }
    }
}

---------------------------------
