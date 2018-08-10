
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
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using zh.TestClass;
namespace zh.TestClass
{
    //�����ࣺ����
    //�������ԣ����֡��ǳơ��Ա����䡢�Ⱥ�
    public abstract class Animal
    {
        
        //��
        protected string _Species;//����:����è����...
        string _Nickname; //�ǳ�
        string _Sex;
        int _Age;
        protected string _Hobby = "�ݿ�"; //�Ⱥá�����
        //���캯��
        protected Animal(string sSex, int sAge)
        {
            SetSpecies();
            _Sex = sSex;
            _Age = sAge;
        }
        //���󷽷�  ���������ʵ�ֹ���
        protected abstract void SetSpecies();
        //�鷽��
        public virtual void SetHobby(string sHobby)
        {
            _Hobby = "�ݿ�";
        }

        //����
        public string Species
        { get { return _Species; } }
        public string Nickname//��д
        {
            get { return _Nickname; }
            set { _Nickname = value; }
        }
        public string Sex
        {
            get { return _Sex; }
        }
        public int Age
        {
            get { return _Age; }
        }
        public string Hobby
        {
            get { return _Hobby; }
        }
    }
    //������
    public abstract class Pet : Animal
    {
        //������
        string _OwnerName;//��������
        protected string _Cry;//����

        //���캯��
        public Pet(string sOwnerName, string sNickname, string sSex, int sAge)
            : base(sSex, sAge)
        {
            SetSpecies();
            //SetHobby("���ͷ");
            SetCry();
            _OwnerName = sOwnerName;
            Nickname = sNickname;
        }

        //�����鷽��
        protected virtual void SetCry()
        {
            _Cry = "�ݿ�";
        }
        //���ط���
        public override void SetHobby(string sHobby)
        {
            base._Hobby = sHobby;
        }
        //��������
        public void Show()
        {
            Console.WriteLine("OwnerName={0};Nickname={1};Sex={2};Age={3}:", OwnerName, Nickname, Sex, Age);
            Console.WriteLine("Species={0};�Ⱥ�={1};����:{2}", Species, Hobby, Cry);
        }
        //����
        public string OwnerName
        { get { return _OwnerName; } }
        public string Cry
        { get { return _Cry; } }
    }
    public class Dog : Pet
    {
        //���캯��
        public Dog(string sOwnerName, string sNickname, string sSex, int sAge)
            : base(sOwnerName, sNickname, sSex, sAge)
        {
            SetHobby("���ͷ");
        }
        //���ط���
        protected override void SetSpecies()
        { base._Species = "��"; }
        protected override void SetCry()
        { base._Cry = "����"; }
    }
    public class Cat : Pet
    {
        //���캯��
        public Cat(string sOwnerName, string sNickname, string sSex, int sAge)
            : base(sOwnerName, sNickname, sSex, sAge)
        {
            SetHobby("��");
        }
        //���ط���
        protected override void SetSpecies()
        { base._Species = "è"; }
        protected override void SetCry()
        { base._Cry = "����"; }
    }
    public abstract class Person : Animal
    {
        //������
        string _Name;
        string _Identity; //��ݣ�ѧ�������ˡ�����

        //���캯��
        protected Person(string sName, string sSex, int sAge, string sIdentity)
            : base(sSex, sAge)
        {
            SetSpecies();
            _Name = sName;
            _Identity = sIdentity;
        }

        //���س��󷽷�SetSpecies
        protected override void SetSpecies()
        {
            base._Species = "��";
        }
        //�˴�δ����SetHobby����������������

        //����
        public string Name
        { get { return _Name; } }
        protected string Identity
        {
            get { return _Identity; }
        }
    }

    //Person�����ࣺGroup
    public class Group : Person
    {
        string _Number;//���:ѧ�ţ����ţ����
        int _Years;//ʱ����ѧ�䡢���䡢����
        protected string _Duty;//ְ��Ŭ��ѧϰ��Ŭ����������������
        //���캯��
        protected Group(string sName, string sSex, int sAge, string sIdentity, string sNumber, int sYears)
            : base(sName, sSex, sAge, sIdentity)
        {
            _Number = sNumber;
            _Years = sYears;
        }
        //�����鷽����������д����Ĭ�ϵ��� Animal.SetHobby()      
        public override void SetHobby(string sHobby)//���ð��ã�����������������
        {
            base._Hobby = sHobby;
        }
        //��������
        public void ShowDuty() //ְ��
        {
            Console.WriteLine("{0}��ְ��{1}", Identity, Duty);
        }

        public void Show()
        {
            Console.WriteLine("Name={0};Sex={1};Age={2}:", Name, Sex, Age);
            Console.WriteLine("���={0};���={1};����={2}:", Identity, Number, Years);
            Console.WriteLine("�ǳ�={0};����={1};ְ��={2}:", Nickname, Hobby, Duty);
            Console.WriteLine("Species={0}", Species);
        }
        //����   
        public string Number//���
        { get { return _Number; } }
        public int Years//����
        { get { return _Years; } }
        protected string Duty//ְ��
        { get { return _Duty; } }
    }
    //����������
    public class Student : Group
    {
        string _School;//����ѧУ
        public Student(string sName, string sSex, int sAge, string sIdentity,
            string sNumber, int sYears, string sSchool)
            : base(sName, sSex, sAge, sIdentity, sNumber, sYears)
        {
            base.Nickname = "С��Ƥ";
            SetHobby("���Ӿ���");
            _School = sSchool;
            base._Duty = "Ŭ��ѧϰ";
        }
        public string School
        { get { return _School; } }
        public new void Show()
        {
            Console.WriteLine("����ѧУ:{0}", School);
            base.Show();
        }
    }
    public class Worker : Group
    {
        string _Factory;//������λ
        public Worker(string sName, string sSex, int sAge, string sIdentity,
            string sNumber, int sYears, string sFactory)
            : base(sName, sSex, sAge, sIdentity, sNumber, sYears)
        {
            base.Nickname = "����ͯ";
            base._Duty = "Ŭ������";
            SetHobby("���Ʊ���");
            _Factory = sFactory;
        }
        public string Factory
        { get { return _Factory; } }
        public new void Show()
        {
            Console.WriteLine("������λ:{0}", Factory);
            base.Show();
        }
    }

    public class Soldier : Group
    {
        string _Troops;//��������
        public Soldier(string sName, string sSex, int sAge, string sIdentity,
            string sNumber, int sYears, string sTroops)
            : base(sName, sSex, sAge, sIdentity, sNumber, sYears)
        {
            base.Nickname = "����";
            base._Duty = "��������";
            SetHobby("�������");
            _Troops = sTroops;
        }
        public string Troops
        { get { return _Troops; } }
        public new void Show()
        {
            Console.WriteLine("���ڲ���:{0}", Troops);
            base.Show();
        }
    }
}

namespace ZhTest
{   
    class MyTest
    {
        static void Main()
        {
            Console.WriteLine("-----Dog-----");
            Dog dog = new Dog("��СС", "����", "��", 3);
            dog.Show();

            Console.WriteLine("-----Cat-----");
            Cat cat = new Cat("��СС", "����", "ĸ", 2);
            cat.Show();

            Console.WriteLine("-----Student-----");
            Student st = new Student("С��", "��", 12, "ѧ��", "1001", 5, "AСѧ");
            st.Show();
            //Console.WriteLine();
            //st.Nickname = "�����1";
            //st.Show();

            System.Console.WriteLine("-----Worker-----");
            Worker wk = new Worker("���", "��", 30, "����", "2002", 10, "��е��");
            wk.Show();

            System.Console.WriteLine("-----Soldier-----");
            Soldier sd = new Soldier("�", "��", 25, "���ֱ�", "3003", 7, "1234����");
            sd.Show();
            Console.ReadKey();
        }
    }
}





---------------------------------
