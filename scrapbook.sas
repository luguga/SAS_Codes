#tip 1
--create a dataset keeping a column
data lib.arquivo_saida;
  set lib.arquivo_entrada;
  keep col1 col2;
run;

#tip 2
proc sort
data=lib.arquivo_entrada (nodupkey);
by col1 col2 ...;
run;

#tip 3
-- IF routine
set lib.arquivo_entrada;
if col1 in (lista);
run;

#tip 4
-- MODIFY
Proc sql;
alter table lib.arquivo_saida
modify column1 char(50) format=$50.;
quit;

#tip 5
-- Replace
data lib.arquivo_saida;
set lib.arquvo_entrada;
col1=tranwrd(onde, de, para);
put col1;
run;

#tip 6
-- data brasileira
proc sql;
select
  dateformat(col1) format ddmmyy10. as novadata
quit;

#tip 7
-- substring substr
proc sql;
select ...
substr(a.col1,find(a.col1,'\')+1,255)) as ADlogin
from ...
quit;

#tip 8
-- Excel exibição de milhão
R$ 0,00.. "MM"

tip 9
-- Alter table
Alter table lib.tabela add
coluna1 num informat=date9. format=date9.;

tip 10
ifn(coluna1, coluna2,0,0);
condição, true, false, null, retorna número

tip 11
-- Zip file
filename source "c:\logs\arquivo.log";
filename to_zip "c:\logs\arquivo.log.gz" gzip;
data _null_;
infile source;
file to_zip;
input;
put _infile_;
run;

tip 12
-- UNZIP file
filename target "c:\logs\arquivo.txt" encoding='utf-8';
filename from_zip "c:\logsaruqivo.txt.gz" gzip;
data _null_;
infile from_zip;
file target;
input;
put _infile_;
run;

tip 13
-- get work directory in runtime
%let workdir=%sysfunc(pathname(work));

tip 14
-- converting strings to system formats
filename source superq(&workdir'/arquivo.sas7bdat');

tip 15
-- masking a password
proc pwencode in='senha';
quit;

tip 16
-- reading a filesystem table
filename contents pipe 'ps-fu <user>';
infile contents truncover;
input content_entry $char2000.;

tip 17
-- reading a constructor of table/view
proc sql;
describe view libname.table;
quit;

tip 18
-- delimiters for bulk inserts in UNIX
'09'x = [tab]
'20'x = [space]
'7f'x = [;]
