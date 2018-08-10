脚本功能：
  C#代码编译器编译.cs文件
LoadShape.bat
@echo off
rem if exist .\WelcomeApp.exe del .\WelcomeApp.exe
rem if exist .\WelcomeMessage.dll del .\WelcomeMessage.dll
rem ---0、直接产生test.exe
rem csc test.cs

rem ---1-1、产生 MyShape.dll、MyMessage.dll 类库
csc /target:library /out:MyShape.dll  MyShape.cs Rect.cs Triangle.cs
csc /target:library /out:MyMessage.dll  MyMessage.cs
rem ---1-2、产生Client.exe应用程序
csc /reference:MyShape.dll;MyMessage.dll Client.cs
Client.exe 
pause  
---------------------------------
操作方式：
  运行 LoadShape.bat
---------------------------------
运行环境：
  cmd
---------------------------------
示例说明：
  对应用程序结构进行组织
    1.利用名字空间把应用程序功能进行分割;
    2.在一个名字空间包含多个类
      在一个可执行文件中调用多个动态库
    3.相关技术
	  异常处理
	    例16-3.5   
         try
         {
             _Bet = int.Parse(_s);
         }
         catch (Exception)
         {
             _Bet = 100;
         }
      类的继承
	     例16-3.2
		   Rectangle:Shape
		   Square:Rectangle
		 例16-3.3
		   Triangle:Shape
		   RectTriangle:Triangle
		   RectEqualTriangle : RectTriangle		   
      派生类对虚方法的重载
	      例16-3.2
		  //重载虚方法，计算矩形面积
          public override int GetArea()
          {
            return _a * _b;
          }
      多态性的实现 
	      例16-3.5 //利用多态性，计算得分		  
---------------------------------
示例代码：
//例16-3.1
//MyShape.cs //用于定义图形，作为其它图形的基类
using System;
namespace zh.MyShape
{
    public class Shape
    {
        //虚方法，用于图形绘制
        public virtual void Draw(){}
        //虚方法，用于计算图形面积
        public virtual int GetArea()
        { return 0;}
    }    
}

//例16-3.2
//Rect.cs //定义矩形和正方形
using System;
namespace zh.MyShape
{
    //定义矩形类
    public class Rectangle:Shape
    {
        protected int _a;
        protected int _b;//矩形边长
        public Rectangle(int a,int b )
        {
            _a = a;
            _b = b;
        }
        //重载虚方法，计算矩形面积
        public override int GetArea()
        {
            return _a * _b;
        }
        //重载虚方法，绘制矩形
        public override void Draw()
        {
            Console.WriteLine("******");
            Console.WriteLine("*    *");
            Console.WriteLine("*    *");
            Console.WriteLine("******");
        }
    }
    //定义正方形类
    public class Square:Rectangle
    {
        public Square(int a) : base(a, a) { }
        //重载，绘制正方形
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

//例16-3.3
//Triangle.cs //定义三角形
using System;
namespace zh.MyShape
{
    //定义普通三角形类，作为其它三角形的基类
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
        //重载虚方法，计算矩形面积
        public override int GetArea()
        {
            int s = (_a + _b + _c) / 2;
            int area = (int)(Math.Sqrt(s * (s - _a) * (s - _b) * (s - _c)));
            return area;
        }
    }

    //定义直角三角形
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

    //定义等腰直角三角形
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

//例16-3.5
//Client.cs 客户程序
using System;
using zh.MyShape;
using zh.MyMessage;
namespace zh.Client
{
    //定义矩形类
    class ClientTest
    {
        public static void Main()
        {
            int _Score = 1000;//总分
            int _Win;//第一局的分数
            int _Choice;//随机获得的图形号
            int _Bet;//每一局的下注
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
                //如果押注的输入不正确，进行异常处理，并默认下注100分
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
                    _Choice = ran.Next() % 4;//随机发生器
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
                    //利用多态性，计算得分
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
