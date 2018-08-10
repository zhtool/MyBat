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

