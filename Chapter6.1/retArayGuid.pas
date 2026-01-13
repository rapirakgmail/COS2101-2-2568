program ReturnArray;

type
  myArray = array[1..5] of Integer;

var
  G2: myArray;

function GetArray(): myArray;
var
  P2: myArray;                { local variable of declared type }
begin
  { initialize array }
  P2[1] := 20;
   exit( P2 );  { return array }
end;

begin

  G2 := GetArray();  { call the function }
  WriteLn('G2[1] = ', G2[1]);

end.
