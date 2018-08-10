//例CreditCard-1
using System;
namespace zh.code
{
    enum eBankType { Local, TransRegional }//银行类型：本地银行、跨地区银行
    enum eCardType { Local, Nonlocal, TheUSW }//卡片类型：本地卡、外地卡、通存通兑卡
    abstract class CreditCard
    {
        string _CardId;
        string _CardName;
        eCardType _CardType;
        double _Balance;

        public string CardId 
        {
            get { return _CardId; }
            set { _CardId = value; }
        }
        public string CardName
        {
            get { return _CardName; }
            set { _CardName = value; }
        }
        
        public eCardType CardType
        {
            get { return _CardType; }
            set { _CardType = value; }
        }

        public CreditCard(string sCardId, string sCardName, eBankType sBankType, eCardType sCardType)
        {
            _CardId = sCardId;
            _CardName = sCardName;
            _BankType = sBankType;
            _CardType = sCardType;
        }
    }
}

//设计一个信用卡通用支付系统：
//系统可使用三个银行的信用卡，
//  一个是本地银行。  Local
//  两个是跨地区银行；TransRegional
//    跨地区银行提供的信用卡分三种：
//      本地卡 Local
//      外地卡 Nonlocal 
//      通存通兑卡。 TheUSW
//系统不处理外地卡付账
//实现的功能
//  付账 Pay_Bill 
//  查询 query
//  转账 Transfer accounts
//  取款 Withdraw money 
//       Draw

//1、抽象类  
// CreditCard