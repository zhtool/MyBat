create or replace function get_药品处方类型(in_materialid in varchar2)
  return varchar2 is
  v_prescription_type varchar2(2);
begin
  select decode(substr(account_subjectid, 1, 5),
                '12101',
                'A1',
                '12102',
                'A2',
                '12103',
                'B1',
                'A1')
    into v_prescription_type
    from hospital.all_material_
   where id = in_materialid
     and rownum = 1;
  return v_prescription_type;
end get_药品处方类型;
/
