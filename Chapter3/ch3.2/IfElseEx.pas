program IfElseExample;

var
  a: Integer;

begin
  Write('Enter a value: ');
  ReadLn(a);

  if a = 10 then
    WriteLn('Value of a is 10')
  else if a = 20 then
    WriteLn('Value of a is 20')
  else if a = 30 then
    WriteLn('Value of a is 30')
  else
    WriteLn('Value of a is not matching');

  WriteLn('Exact value of a is : ', a);
end.

