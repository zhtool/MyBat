//例16-1
using System;
namespace zh.Code.WelcomeMessage
{
    class WellcomeMessage
    {
        string _Msg;
        public WellcomeMessage()
        { _Msg = "WelCome!"; }
        public string Msg
        {
            get { return _Msg; }
            set { _Msg = value; }
        }      
    }    
}

