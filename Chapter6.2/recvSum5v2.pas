program SumExample;

function sum(i:integer): integer;
var s:integer;
begin
  if( i <=0 ) then
    exit(0 );
  exit ( i+sum(i-1)  );
end;

var
  s : Integer;
begin
  s:=sum(5);
  WriteLn('sum = ', s);
end.





