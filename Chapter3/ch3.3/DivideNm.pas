program DivideNumber;
var
  num: Real;
begin
  Write('Please enter the number to divide: ');
  ReadLn(num);

  while num > 1.0 do
  begin
    WriteLn(num:0:2);
    num := num / 2;
  end;
end.

