program passArrayRef;

type
  myIntArray = array[1..5] of integer;
  
// This procedure takes structure variable as parameter
procedure printArray(var data: myIntArray);
begin
  writeln;
  writeln(chr(9)+'data[1] =  ', data[1]);
  writeln(chr(9)+'data[2] =  ', data[2]);
  data[1] := 101;
  data[2] := 202;
end;

var
  myData1: myIntArray;
  myData2: array[1..5] of integer;

begin
  myData1[1] := 10;  myData1[2] := 20;
  printArray(myData1);
  writeln('myData1[1] =  ', myData1[1]);
  writeln('myData1[2] =  ', myData1[2]);
  myData2[1] := 110;  myData2[2] := 120;
  printArray(myData2);
  writeln('myData2[1] =  ', myData2[1]);
  writeln('myData2[2] =  ', myData2[2]);

end.

