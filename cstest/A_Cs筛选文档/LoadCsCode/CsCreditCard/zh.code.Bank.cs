using System;
namespace zh.code
{
    enum eBankType { Local, TransRegional }//银行类型:本地银行、跨区银行
    struct strBank
    {
        string BankName;
        eBankType BankType;
    }
    public class Bank
    {
        //银行类型：本地银行、跨地区银行
        eBankType _BankType;

        public eBankType BankType
        {
            get { return _BankType; }
            set { _BankType = value; }
        }
        public Bank(eBankType sBankType)
        {
            _BankType = sBankType;
        }
    }
}