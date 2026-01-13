program ReturnArray;

type
  myArray = array[1..5] of Integer;

var
  G1: array[1..5] of Integer;
  G2: myArray;

function GetArray(): myArray;
var
  P1: array[1..5] of Integer;  { local variable, same type shape as myArray }
  P2: myArray;                { local variable of declared type }
begin
  { initialize array }
  P1[1]  := 10;
  P2[1] := 20;
  //exit( P1 );  { return array }
   exit( P2 );  { return array }
end;

begin
  G1 := GetArray();  { call the function }
  WriteLn('G1[1] = ', G1[1]);

  G2 := GetArray();  { call the function }
  WriteLn('G2[1] = ', G2[1]);

end.

