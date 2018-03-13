
conn hospital/source

set pages 0
set lines 200
set trimspool on

spool ctable.log

drop table charge_bill_a01_;
@charge_bill_a01.SQL

drop table charge_item_a01_;
@charge_item_a01.sql

drop table circulation_detail_a01_;
@circulation_detail_a01.SQL

drop table patient_;
@patient.SQL

drop table prescription_a01_;
@prescription_a01.SQL

drop table prescription_detail_a01_;
@prescription_detail_a01.SQL

drop table order_list_a01_;
@order_list_a01.SQL

drop table charge_statistics_;
@charge_statistics.SQL

spool off