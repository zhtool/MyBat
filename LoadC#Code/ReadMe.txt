
�ű����ܣ�

  C#�������������.cs�ļ�
  ���ڲ���C#����
---------------------------------

������ʽ��

  ִ�� loads.bat;
---------------------------------

���л�����
  cmd
---------------------------------
 
��ע��test.cs
using System;
namespace zh.test
{
    class BaseFunction
    {
        /// <summary>
        /// ��
        /// </summary>
        private int _iNum1, _iNum2;
        /// <summary>
        /// ����
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
        /// ���캯��
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
        /// ����
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
            BF.iNum1 = 111;
            BF.iNum2 = 222;
            System.Console.WriteLine("BF.iNum ->GetSum()={0}", BF.GetSum());                        
        }
    }
}


---------------------------------
