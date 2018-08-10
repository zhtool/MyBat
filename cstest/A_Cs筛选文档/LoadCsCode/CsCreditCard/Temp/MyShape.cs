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

