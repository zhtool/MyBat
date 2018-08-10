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
            Console.WriteLine("---RectTriangle---");
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

