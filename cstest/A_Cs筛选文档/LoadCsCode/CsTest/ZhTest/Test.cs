using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using zh.Class;

namespace ZhTest
{
    class MyTest
    {
        static void Main()
        {
            Console.WriteLine("-----Dog-----");
            Dog dog = new Dog("李小小", "欢欢", "公", 3);
            dog.Show();

            Console.WriteLine("-----Cat-----");
            Cat cat = new Cat("李小小", "乐乐", "母", 2);
            cat.Show();

            Console.WriteLine("-----Student-----");
            Student st = new Student("小华", "男", 12, "学生", "1001", 5, "A小学");
            st.Show();
            //Console.WriteLine();
            //st.Nickname = "机灵鬼1";
            //st.Show();

            System.Console.WriteLine("-----Worker-----");
            Worker wk = new Worker("武大", "男", 30, "工人", "2002", 10, "机械厂");
            wk.Show();

            System.Console.WriteLine("-----Soldier-----");
            Soldier sd = new Soldier("李剑", "男", 25, "特种兵", "3003", 7, "1234部队");
            sd.Show();
            Console.ReadKey();
        }
    }
}

namespace zh.Class
{
    //抽象类：动物
    //具有属性：物种、昵称、性别、年龄、嗜好
    public abstract class Animal
    {        
        //域
        protected string _Species;//物种:狗、猫、人...
        string _Nickname; //昵称
        string _Sex;
        int _Age;
        protected string _Hobby = "暂空"; //嗜好、爱好
        //构造函数
        protected Animal(string sSex, int sAge)
        {
            SetSpecies();
            _Sex = sSex;
            _Age = sAge;
        }
        //抽象方法  派生类必须实现功能
        protected abstract void SetSpecies();
        //虚方法
        public virtual void SetHobby(string sHobby)
        {
            _Hobby = "暂空";
        }

        //属性
        public string Species
        { get { return _Species; } }
        public string Nickname//读写
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
    //宠物类
    public abstract class Pet : Animal
    {
        //增加域
        string _OwnerName;//主人姓名
        protected string _Cry;//叫声
        
        //构造函数
        public Pet(string sOwnerName, string sNickname, string sSex, int sAge)
            : base(sSex, sAge)
        {
            SetSpecies();
            //SetHobby("肉骨头");
            SetCry();
            _OwnerName = sOwnerName;
            Nickname = sNickname;
        }

        //增加虚方法
        protected virtual void SetCry()
        {
            _Cry = "暂空";
        }
        //重载方法
        public override void SetHobby(string sHobby)
        {
            base._Hobby = sHobby;
        }
        //新增方法
        public void Show()
        {
            Console.WriteLine("OwnerName={0};Nickname={1};Sex={2};Age={3}:", OwnerName, Nickname, Sex, Age);
            Console.WriteLine("Species={0};嗜好={1};叫声:{2}", Species, Hobby, Cry);
        }
        //属性
        public string OwnerName
        { get { return _OwnerName; } }
        public string Cry
        { get { return _Cry; } }
    }
    public class Dog : Pet
    {
        //构造函数
        public Dog(string sOwnerName, string sNickname, string sSex, int sAge)
            : base(sOwnerName, sNickname, sSex, sAge)
        {
            SetHobby("肉骨头");
        }
        
        //重载方法
        protected override void SetSpecies()
        { base._Species = "狗"; }
        protected override void SetCry()
        { base._Cry = "汪汪"; }
    }
    public class Cat : Pet
    {
        //构造函数
        public Cat(string sOwnerName, string sNickname, string sSex, int sAge)
            : base(sOwnerName, sNickname, sSex, sAge)
        {
            SetHobby("鱼");
        }
        //重载方法
        protected override void SetSpecies()
        { base._Species = "猫"; }
        protected override void SetCry()
        { base._Cry = "喵喵"; }
    }
    public abstract class Person : Animal
    {
        //增加域
        string _Name;
        string _Identity; //身份：学生、工人、军人

        //构造函数
        protected Person(string sName, string sSex, int sAge, string sIdentity)
            : base(sSex, sAge)
        {
            SetSpecies();
            _Name = sName;
            _Identity = sIdentity;
        }

        //重载抽象方法SetSpecies
        protected override void SetSpecies()
        {
            base._Species = "人";
        }
        //此处未重载SetHobby，留到派生类重载

        //属性
        public string Name
        { get { return _Name; } }
        protected string Identity
        {
            get { return _Identity; }
        }
    }

    //Person派生类：Group
    public class Group : Person
    {
        string _Number;//编号:学号，工号，编号
        int _Years;//时长：学龄、工龄、军龄
        protected string _Duty;//职责：努力学习、努力工作、保家卫国
        //构造函数
        protected Group(string sName, string sSex, int sAge, string sIdentity, string sNumber, int sYears)
            : base(sName, sSex, sAge, sIdentity)
        {
            _Number = sNumber;
            _Years = sYears;
        }
        //重载虚方法，若不重写，将默认调用 Animal.SetHobby()      
        public override void SetHobby(string sHobby)//设置爱好：如比赛、竞技、射击
        {
            base._Hobby = sHobby;
        }
        //新增方法
        public void ShowDuty() //职责
        {
            Console.WriteLine("{0}的职责：{1}", Identity, Duty);
        }

        public void Show()
        {
            Console.WriteLine("Name={0};Sex={1};Age={2}:", Name, Sex, Age);
            Console.WriteLine("身份={0};编号={1};年限={2}:", Identity, Number, Years);
            Console.WriteLine("昵称={0};爱好={1};职责={2}:", Nickname, Hobby, Duty);
            Console.WriteLine("Species={0}", Species);
        }
        //属性   
        public string Number//编号
        { get { return _Number; } }
        public int Years//年限
        { get { return _Years; } }
        protected string Duty//职责
        { get { return _Duty; } }
    }
    //定义派生类
    public class Student : Group
    {
        string _School;//所属学校
        public Student(string sName, string sSex, int sAge, string sIdentity,
            string sNumber, int sYears, string sSchool)
            : base(sName, sSex, sAge, sIdentity, sNumber, sYears)
        {
            base.Nickname = "小顽皮";
            SetHobby("电子竞技");
            _School = sSchool;
            base._Duty = "努力学习";
        }
        public string School
        { get { return _School; } }
        public new void Show()
        {
            Console.WriteLine("所在学校:{0}", School);
            base.Show();
        }
    }
    public class Worker : Group
    {
        string _Factory;//工作单位
        public Worker(string sName, string sSex, int sAge, string sIdentity,
            string sNumber, int sYears, string sFactory)
            : base(sName, sSex, sAge, sIdentity, sNumber, sYears)
        {
            base.Nickname = "老顽童";
            base._Duty = "努力工作";
            SetHobby("棋牌比赛");
            _Factory = sFactory;
        }
        public string Factory
        { get { return _Factory; } }
        public new void Show()
        {
            Console.WriteLine("工作单位:{0}", Factory);
            base.Show();
        }
    }

    public class Soldier : Group
    {
        string _Troops;//所属部队
        public Soldier(string sName, string sSex, int sAge, string sIdentity,
            string sNumber, int sYears, string sTroops)
            : base(sName, sSex, sAge, sIdentity, sNumber, sYears)
        {
            base.Nickname = "兵王";
            base._Duty = "保家卫国";
            SetHobby("射击比赛");
            _Troops = sTroops;
        }
        public string Troops
        { get { return _Troops; } }
        public new void Show()
        {
            Console.WriteLine("所在部队:{0}", Troops);
            base.Show();
        }
    }
}


