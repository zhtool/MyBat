using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ZH.TEST.WS.Dao
{
    public class ReportFileDao
    {
        private string _hosp_id = string.Empty;
        public string HospId
        {
            get { return _hosp_id; }
            set { _hosp_id = value; }
        }

        private string _owner = string.Empty;
        public string Owner
        {
            get { return _owner; }
            set { _owner = value; }
        }

        private string _report_id = string.Empty;
        public string ReportId
        {
            get { return _report_id; }
            set { _report_id = value; }
        }

        private string _type = string.Empty;
        public string Type
        {
            get { return _type; }
            set { _type = value; }
        }

        private string _file_type = string.Empty;
        public string FileType
        {
            get { return _file_type; }
            set { _file_type = value; }
        }

        private string _content = string.Empty;
        public string Content
        {
            get { return _content; }
            set { _content = value; }
        }

        private string _version = string.Empty;
        public string Version
        {
            get { return _version; }
            set { _version = value; }
        }
    }
}
