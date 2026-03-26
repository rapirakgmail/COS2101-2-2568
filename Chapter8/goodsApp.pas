program Hello;
 type
    Good  = record 
       ID:string[3+1];               
       Product:string[5+1];
       vol:integer;
       price:real;
    end;
    ArryGood = array[1..100] of Good;

function ReadGood(var pArryGood : ArryGood ):integer;
var
     f:Text;
     r : Good;
     n : integer;
begin
  Assign(f, 'good.txt');
  Reset(f);   { เปิดไฟล์เพื่ออ่าน }
  n := 0;
  while not Eof(f) do
  begin
    ReadLn(f, r.id ,  r.Product,r.vol,r.price);
    
    n := n+ 1;
    pArryGood[ n ] := r;
    
    Writeln('ID    : ', r.id);
    Writeln('Product    : ', r.Product);
    Writeln('vol : ', r.vol);
    Writeln('price : ', r.price:0:2);
    Writeln('----------------------');
  end;
  Close(f);   { ปิดไฟล์ }
  exit(n);
end;

procedure writeGood(r : ArryGood ;n :integer);
var
     f:Text;
     i : integer;
begin
  Assign(f, 'good.out');
  rewrite(f);   { เปิดไฟล์เพื่ออ่าน }
  
  for i := 1 to n do
  begin
    writeln(f, r[i].id,' ', r[i].Product,' ',r[i].vol, ' ',r[i].price:0:2);
  end;
  Close(f);   { ปิดไฟล์ }
end;

function Findmax( pArryGood:ArryGood; s:integer; n:integer ):integer;
var
 max,imax,i:integer;
begin
  max := pArryGood[s].vol;
  imax := s;
  for i := s to n do
  begin
    if max < pArryGood[i].vol then
    begin
        imax := i;  
        max := pArryGood[i].vol;
    end;
  end;
  exit(imax);
end;

procedure  sortGood(var vArryGood:ArryGood; n:integer);
var 
 i,imax:integer;
 t:good;
begin
  for i:= 1 to n do
  begin
     imax := Findmax( vArryGood, i, n);
     t := vArryGood[i];
     vArryGood[i] := vArryGood[imax];
     vArryGood[imax] := t;
  end;

end;

var
  vArryGood : ArryGood;
  n:integer;
begin
  n := ReadGood(vArryGood);
  sortGood(vArryGood,n);
  writeGood(vArryGood,n);
end.