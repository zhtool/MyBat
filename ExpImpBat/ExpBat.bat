exp system/tigersysdba@his BUFFER=955500  file=dmp\HisYQ.dmp   log=log\expHisYQ.log   full=y
exp system/tigersysdba@his BUFFER=955500  file=dmp\hsemr.dmp  owner=(hsemr) log=log\expHsEmr.log
exp system/tigersysdba@his BUFFER=955500  file=dmp\hscenter.dmp  owner=(hscenter) log=log\expHsCenter.log
exp system/tigersysdba@his BUFFER=955500  file=dmp\hospital.dmp  owner=(hospital) log=log\expHospital.log
exp system/tigersysdba@his BUFFER=955500  file=dmp\hsins.dmp  owner=(hsins) log=log\exphsins.log

rem exp system/tigersysdba@his BUFFER=955500  file=dmp\hsemr.dmp  owner=(hsemr) log=log\expHsEmr.log
rem TABLES not in(CASE_PAGE1_CONTENT_,CASE_PAGE1_CONTENT_,MR_FILE_CONTENT_,MR_FILE_CONTENT_CDA_,MR_FILE_CONTENT_HTML_,
rem MR_FILE_CONTENT_SEGMENT_,MR_FILE_CONTENT_TEXT_,MR_FILE_CONTENT_XML_,NR_NURSE_RECORD_XML_,OPERATION_APPLY_RECORD_XML_) 



rem exp system/tigersysdba@his BUFFER=955500  file=dmp\lisif.dmp  owner=(lisif) log=log\expLisif.log
rem exp system/tigersysdba@his BUFFER=955500  file=dmp\pacsif.dmp  owner=(pacsif) log=log\expPacsif.log
rem exp system/tigersysdba@his BUFFER=955500  file=dmp\hsdoc.dmp  owner=(hsdoc) log=log\expHsdoc.log


rem exp system/tigersysdba@his BUFFER=955500  file=dmp\hsecase.dmp  owner=(hsecase) log=log\expHsecase.log
rem exp system/tigersysdba@his BUFFER=955500  file=dmp\hstend.dmp  owner=(hstend) log=log\expHstend.log

exit

