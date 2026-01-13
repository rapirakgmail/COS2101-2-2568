program passArrayDemo1;

// This procedure takes structure variable as parameter
procedure printArray(data: array[1..5] of integer );
begin
  writeln;
  writeln('data[1] =  ', data[1]);
  writeln('data[2] =  ', data[2]);
  data[1] := 101;
  data[2] := 202;
end;

var
  myData2: array[1..5] of integer;

begin
  myData2[1] := 110;  myData2[2] := 120;
  printArray(myData2);
  writeln('myData2[1] =  ', myData2[1]);
  writeln('myData2[2] =  ', myData2[2]);

end.
