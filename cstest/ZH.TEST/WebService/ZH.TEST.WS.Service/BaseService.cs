using System;
using System.Data;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Concurrent;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;
using System.Collections.Concurrent;

namespace ZH.TEST.WS.Service
{
    public class BaseService
    {
        private string strHospId = string.Empty;
        public string HospId
        {
            get { return strHospId; }
            set { strHospId = value; }
        }

        private string strDeptId = string.Empty;
        public string DeptId
        {
            get { return strDeptId; }
            set { strDeptId = value; }
        }
        private string strWorkerId = string.Empty;
        public string WorkerId
        {
            get { return strWorkerId; }
            set { strWorkerId = value; }
        }
        public BaseService()
        {
            DeptId = string.Empty;
            WorkerId = string.Empty;
        }

        



    }
}
