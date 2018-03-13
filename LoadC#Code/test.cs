using System;
namespace zh.test
{
    class BaseFunction
    {
        /// <summary>
        /// 域
        /// </summary>
        private int _iNum1, _iNum2;
        /// <summary>
        /// 属性
        /// </summary>
        public int iNum1
        {
            get { return _iNum1; }
            set { _iNum1 = value; }
        }
        public int iNum2
        {
            get { return _iNum2; }
            set { _iNum2 = value; }
        }
        /// <summary>
        /// 构造函数
        /// </summary>
        public BaseFunction()
        {
            _iNum1 = 1;
            _iNum2 = 2;
        }

        public BaseFunction(int inNum1, int inNum2)
        {
            _iNum1 = inNum1;
            _iNum2 = inNum2;
        }
        /// <summary>
        /// 方法
        /// </summary>
        /// <returns></returns>
        public int GetSum()
        {
            return _iNum1 + _iNum2;
        }
        public int GetSum(int inNum1, int inNum2)
        {
            return inNum1 + inNum2;
        }
    }

    class MyTestClass
    {
        static void Main()
        {
            BaseFunction BF = new BaseFunction();
            System.Console.WriteLine("GetSum()={0}", BF.GetSum());
            System.Console.WriteLine("GetSum(11,22)={0}", BF.GetSum(11,22));
            BF.iNum1 = 110;
            BF.iNum2 = 220;
            System.Console.WriteLine("BF.iNum ->GetSum()={0}", BF.GetSum());                        
        }
    }
}
