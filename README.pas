program apo8hkh;
uses wincrt;
type stoixeia=record
     comp:string;
     onoma:string;
     eponymo:string;
     thl:string;
    end;

var prom:stoixeia;
    u:text;
    filename,t,eidos:string;
    n,sunolo,i:integer;
    logic:char;
    a:array[1..173] of string;        {maximum ari8mos string p mporei na krathsei pinakas}

BEGIN
 repeat
 ClrScr;
 writeln('*******************************************************************************');
 writeln('          ama trexete to programma PRWTH FORA ----------- pathste 0');
 writeln('          gia eisagwgh stoixeiwn promh8euth ------------- pathste 1');
 writeln('          gia allagh stoixeiwn promh8euth --------------- pathste 2');
 writeln('          gia emfanish stoixeiws promh8euth ------------- pathste 3');
 writeln('          gia eisagwgh proiontwn ------------------------ pathste 4');
 writeln('          gia diagrafh proiontos ------------------------ pathste 5');
 writeln('          gia na deite posa eidh uparxoun --------------- pathste 6');
 writeln('          gia emfanish kategrammenwn proiontwn ---------- pathste 7');
 writeln('*******************************************************************************');
 write('                               Epilogh: ');
 read(n);
 writeln('*******************************************************************************');
 readln;

 if n=0 then
 begin
  writeln;
  writeln('                      Ama to programma trexei 1h fora ');
  writeln('    kataskeuazetai sto C:\ ena arxeio me onoma "sunolo.txt" kai sunolo 0');
  writeln('    kataskeuazetai sto C:\ ena arxeio me onoma "eidos.txt" xwris dedomena');
  writeln;
  writeln(' ! H XRHSH AUTHS THS EPILOGHS DIAGRAFEI TA DEDOMENA NA MHN 3ANAXRHSIMOPOIH8EI !');

  assign(u,'C:\sunolo.txt');
  rewrite(u);
   sunolo:=0;
   writeln(u,sunolo);
  close(u);

  assign(u,'C:\eidh.txt');
  rewrite(u);
  close(u);

 end;

 if n=1 then
 begin
  write('          dwse onoma etairias promh8euth: ');
  read(prom.comp);
  filename:='C:\'+prom.comp+'.txt';
  readln;

  write('          dwse onoma promh8euth: ');
  read(prom.onoma);
  readln;

  write('          dwse eponymo promh8euth: ');
  read(prom.eponymo);
  readln;

  write('          dwse thlefwno promh8euth: ');
  read(prom.thl);
  readln;

  assign(u,filename);
  rewrite(u);
   writeln(u,'ETAIRIA: ',prom.comp);
   writeln(u,'ONOMA: ',prom.onoma);
   writeln(u,'EPONYMO: ',prom.eponymo);
   writeln(u,'THLEFWNO: ',prom.thl);
  close(u);

  writeln;
  writeln('          apo8hkeuthke sto ',filename);
 end;

 if n=2 then
 begin
  write('          dwse onoma etairias promh8euth: ');
  read(prom.comp);
  filename:='C:\'+prom.comp+'.txt';
  readln;

  assign(u,filename);
  reset(u);
   readln(u,prom.comp);
   readln(u,prom.onoma);
   readln(u,prom.eponymo);
   readln(u,prom.thl);
  close(u);

  write('          8es na alla3eis onoma promh8euth? y/n: ');
  read(logic);
  readln;
  if logic='y' then
  begin
   write('          dwse onoma promh8euth: ');
   read(prom.onoma);
   prom.onoma:='ONOMA: '+prom.onoma;
   readln;
  end;

  write('          8es na alla3eis eponymo promh8euth? y/n: ');
  read(logic);
  readln;
  if logic='y' then
  begin
   write('          dwse eponymo promh8euth: ');
   read(prom.eponymo);
   prom.eponymo:='EPONYMO: '+prom.eponymo;
   readln;
  end;

  write('          8es na alla3eis thlefwno promh8euth? y/n: ');
  read(logic);
  readln;
  if logic='y' then
  begin
   write('          dwse thlefwno promh8euth: ');
   read(prom.thl);
   prom.thl:='THLEFWNO: '+prom.thl;
   readln;
  end;

  assign(u,filename);
  rewrite(u);
   writeln(u,prom.comp);
   writeln(u,prom.onoma);
   writeln(u,prom.eponymo);
   writeln(u,prom.thl);
  close(u);

  writeln;
  writeln('          apo8hkeuthke sto ',filename);
 end;

 if n=3 then
 begin
  write('          dwse onoma etairias promh8euth: ');
  read(prom.comp);
  filename:='C:\'+prom.comp+'.txt';
  readln;

  assign(u,filename);
  reset(u);
   readln(u,prom.comp);
   readln(u,prom.onoma);
   readln(u,prom.eponymo);
   readln(u,prom.thl);
  close(u);

  assign(u,filename);
  reset(u);
   writeln('           * ',prom.comp);
   writeln('           * ',prom.onoma);
   writeln('           * ',prom.eponymo);
   writeln('           * ',prom.thl);
  close(u);
 end;

 if n=4 then
 begin
  assign(u,'C:\sunolo.txt');
  reset(u);
   readln(u,sunolo);
   sunolo:=sunolo+1;
  close(u);

  assign(u,'C:\sunolo.txt');
  rewrite(u);
   writeln(u,sunolo);
  close(u);
 
  write('          dwse onoma proiontws: ');
  read(eidos);
  readln;

  assign(u,'C:\eidh.txt');
  append(u);
    writeln(u,eidos);
  close(u);

  writeln;
  writeln('          apo8hkeuthke sto C:\eidh.txt');
 end;

 if n=5 then
 begin
  assign(u,'C:\sunolo.txt');
  reset(u);
   readln(u,sunolo);
   sunolo:=sunolo-1;
  close(u);

  assign(u,'C:\sunolo.txt');
  rewrite(u);
   writeln(u,sunolo);
  close(u);
 
  write('          dwse onoma proiontws: ');
  read(eidos);
  readln;

  assign(u,'C:\eidh.txt');
  reset(u);
   for i:=1 to sunolo do
   begin
    readln(u,t);
    if t=eidos then
    begin
     i:=i-1;
    end
    else
    begin
     a[i]:=t;
    end;
   end;
  close(u);

  assign(u,'C:\eidh.txt');
  rewrite(u);
   for i:=1 to sunolo do
   begin
    writeln(u,a[i]);
   end;
  close(u);

  writeln('          apo8hkeuthke sto C:\eidh.txt');
 end;

 if n=6 then
 begin
  assign(u,'C:\sunolo.txt');
  reset(u);
   readln(u,sunolo);
   writeln('                  * To sunolo twn proiontwn einai: ',sunolo,' *');
  close(u);
 end;

 if n=7 then
 begin
  assign(u,'C:\eidh.txt');
  reset(u);
   repeat
    readln(u,eidos);
    writeln('                               * ',eidos);
   until eof(u);
  close(u);
  writeln; 
 end;

 writeln('*******************************************************************************');
 write('          ama 8es na stamathseis pata "n" alliws pata oti allo 8es: ');
 read(logic);
 readln;
 until logic='n';

END.
