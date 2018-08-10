//定义业务类，作为其它业务类的基类
using System;
namespace zh.code.abstracts
{
    abstract class Business
    {
        public virtual void Pay() { }//付账
        public virtual double Query() { return 0.00; }//查询
        public virtual void TransferAccounts() { }//转账
        public virtual void WithdrawMoney() { }//取款
    }
}