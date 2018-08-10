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
            int _Win;//每一局赢取的分数
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

