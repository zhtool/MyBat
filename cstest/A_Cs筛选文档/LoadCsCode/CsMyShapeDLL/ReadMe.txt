�ű����ܣ�
  C#�������������.cs�ļ�
LoadShape.bat
@echo off
rem if exist .\WelcomeApp.exe del .\WelcomeApp.exe
rem if exist .\WelcomeMessage.dll del .\WelcomeMessage.dll
rem ---0��ֱ�Ӳ���test.exe
rem csc test.cs

rem ---1-1������ MyShape.dll��MyMessage.dll ���
csc /target:library /out:MyShape.dll  MyShape.cs Rect.cs Triangle.cs
csc /target:library /out:MyMessage.dll  MyMessage.cs
rem ---1-2������Client.exeӦ�ó���
csc /reference:MyShape.dll;MyMessage.dll Client.cs
Client.exe 
pause  
---------------------------------
������ʽ��
  ���� LoadShape.bat
---------------------------------
���л�����
  cmd
---------------------------------
ʾ��˵����
  ��Ӧ�ó���ṹ������֯
    1.�������ֿռ��Ӧ�ó����ܽ��зָ�;
    2.��һ�����ֿռ���������
      ��һ����ִ���ļ��е��ö����̬��
    3.��ؼ���
	  �쳣����
	    ��16-3.5   
         try
         {
             _Bet = int.Parse(_s);
         }
         catch (Exception)
         {
             _Bet = 100;
         }
      ��ļ̳�
	     ��16-3.2
		   Rectangle:Shape
		   Square:Rectangle
		 ��16-3.3
		   Triangle:Shape
		   RectTriangle:Triangle
		   RectEqualTriangle : RectTriangle		   
      ��������鷽��������
	      ��16-3.2
		  //�����鷽��������������
          public override int GetArea()
          {
            return _a * _b;
          }
      ��̬�Ե�ʵ�� 
	      ��16-3.5 //���ö�̬�ԣ�����÷�		  
---------------------------------
ʾ�����룺
//��16-3.1
//MyShape.cs //���ڶ���ͼ�Σ���Ϊ����ͼ�εĻ���
using System;
namespace zh.MyShape
{
    public class Shape
    {
        //�鷽��������ͼ�λ���
        public virtual void Draw(){}
        //�鷽�������ڼ���ͼ�����
        public virtual int GetArea()
        { return 0;}
    }    
}

//��16-3.2
//Rect.cs //������κ�������
using System;
namespace zh.MyShape
{
    //���������
    public class Rectangle:Shape
    {
        protected int _a;
        protected int _b;//���α߳�
        public Rectangle(int a,int b )
        {
            _a = a;
            _b = b;
        }
        //�����鷽��������������
        public override int GetArea()
        {
            return _a * _b;
        }
        //�����鷽�������ƾ���
        public override void Draw()
        {
            Console.WriteLine("******");
            Console.WriteLine("*    *");
            Console.WriteLine("*    *");
            Console.WriteLine("******");
        }
    }
    //������������
    public class Square:Rectangle
    {
        public Square(int a) : base(a, a) { }
        //���أ�����������
        public override void Draw()
        {
            Console.WriteLine("******");
            Console.WriteLine("*    *");
            Console.WriteLine("*    *");
            Console.WriteLine("*    *");
            Console.WriteLine("*    *");
            Console.WriteLine("******");
        }
    }
}

//��16-3.3
//Triangle.cs //����������
using System;
namespace zh.MyShape
{
    //������ͨ�������࣬��Ϊ���������εĻ���
    public class Triangle:Shape
    {
        protected int _a;
        protected int _b;
        protected int _c;
        public Triangle(int a, int b,int c)
        {
            _a = a;
            _b = b;
            _c = c;
        }
        //�����鷽��������������
        public override int GetArea()
        {
            int s = (_a + _b + _c) / 2;
            int area = (int)(Math.Sqrt(s * (s - _a) * (s - _b) * (s - _c)));
            return area;
        }
    }

    //����ֱ��������
    public class RectTriangle:Triangle
    {
        new protected int _a;
        new protected int _b;
        public RectTriangle(int a,int b):base(a,b,(int)(Math.Sqrt(a*b +b*b)))
        {
            _a=a;
            _b=b;
        }
        public override int GetArea()
        {
            return (int)(_a * _b / 2);
        }
        public override void Draw()
        {
            Console.WriteLine("*");
            Console.WriteLine("* *");
            Console.WriteLine("*   *");
            Console.WriteLine("*     *");
            Console.WriteLine("********");
        }
    }

    //�������ֱ��������
    public class RectEqualTriangle : RectTriangle
    {
        new protected int _a;
        public RectEqualTriangle(int a)
            : base(a, a)
        {
            _a = a;
        }
        public override int GetArea()
        {
            return (int)(_a * _a / 2);
        }
        public override void Draw()
        {
            Console.WriteLine("---RectEqualTriangle---");
            Console.WriteLine("*");
            Console.WriteLine("* *");
            Console.WriteLine("*   *");
            Console.WriteLine("*     *");
            Console.WriteLine("********");
        }
    }
}

//��16-3.4
//MyMessage.cs //���������ʾ
using System;
namespace zh.MyMessage
{
    //���������
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

//��16-3.5
//Client.cs �ͻ�����
using System;
using zh.MyShape;
using zh.MyMessage;
namespace zh.Client
{
    //���������
    class ClientTest
    {
        public static void Main()
        {
            int _Score = 1000;//�ܷ�
            int _Win;//��һ�ֵķ���
            int _Choice;//�����õ�ͼ�κ�
            int _Bet;//ÿһ�ֵ���ע
            string _s;
            Shape sp = new Shape();
            Random ran = new Random();
            Message msg = new Message();
            msg.Begin();
            while(true)
            {
                if (!msg.Ask())
                    break;
                Console.WriteLine("Your Score:{0}",_Score);
                Console.WriteLine("Enter Your bet");
                _s = Console.ReadLine();
                //���Ѻע�����벻��ȷ�������쳣������Ĭ����ע100��
                try
                {
                    _Bet = int.Parse(_s);
                }
                catch (Exception)
                {
                    _Bet = 100;
                }
                if (_Bet < _Score)
                    _Score -= _Bet;
                else
                {
                    _Bet = _Score;
                    _Score = 0;
                }
                Console.WriteLine("Remain Score:{0}",_Score);
                _Win = 0;
                for (int i = 0; i < 3; i++)
                {
                    _Choice = ran.Next() % 4;//���������
                    switch (_Choice)
                    {
                        case 0:
                            sp = new RectTriangle(5, 4);
                            goto end;
                        case 1:
                            sp = new RectEqualTriangle(5);
                            goto end;
                        case 2:
                            sp = new Rectangle(5, 4);
                            goto end;
                        case 3:
                            sp = new Square(5);
                            goto end;
                        default:
                            break;
                    }
                end:
                    //���ö�̬�ԣ�����÷�
                    sp.Draw();
                    _Win += sp.GetArea() * (i + 1) * _Bet / 100;
                    Console.WriteLine("Your win:{0}", _Win);
                }
                _Score += _Win;
                Console.WriteLine("Your Score:{0}", _Score);
                if (_Score<100)
                {
                    Console.WriteLine("Your remain Score is not enough to play");
                    break;
                }
            }
        }       
    }   
}



---------------------------------
