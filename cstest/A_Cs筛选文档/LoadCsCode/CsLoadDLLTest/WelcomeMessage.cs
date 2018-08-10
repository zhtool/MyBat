//例16-1产生WelcomeMessage.dll
using System;
namespace zh.Code.WelcomeMsg
{
    public class WelcomeMessage
    {
        public WelcomeMessage()
        { _Msg = "WelCome!"; }
        string _Msg;
        public string Msg
        {
            get { return _Msg; }
            set { _Msg = value; }
        }
        public void Show()
        {System.Console.WriteLine(Msg); }
        public void Show(string sStr)
        { System.Console.WriteLine(Msg+" "+sStr); }

    }    
}

