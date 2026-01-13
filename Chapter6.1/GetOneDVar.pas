program GetOneDataVar;

procedure GetOneData1(var i: Integer);
begin
  Write(' enter data : ');
  ReadLn(i);
end;

function GetOneData2(): Integer;
var 
  i:Integer;
begin
  Write(' enter data : ');
  ReadLn(i);
  exit(i);
end;

var
  x: Integer;

begin
  GetOneData1(x);
  x := GetOneData2();
end.

