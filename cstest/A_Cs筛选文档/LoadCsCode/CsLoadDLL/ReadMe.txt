
�ű����ܣ�

  C#�������������.cs�ļ�
  �˽ű����ɿ��ļ�������̨�ļ������Բ������������
---------------------------------

������ʽ��

  ִ�� loads.bat;
---------------------------------

���л�����
  cmd
---------------------------------
 
��ע��
WelcomeMessage.cs
//No1.��������WelcomeMessage.dll
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
//No2.������������̨����WelcomeApp.exe
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
            System.Console.WriteLine("������������֣�");
            string sInput = Console.ReadLine();
            w.Msg = "Welcome " + sInput;
            Console.WriteLine(w.Msg);
        }
    }
}

---------------------------------
