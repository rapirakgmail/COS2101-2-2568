program SquareRepeatUntil;

var
  num, squared: Real;

begin
  repeat
    Write('Enter a number (0 to quit): ');
    ReadLn(num);
    squared := num * num;
    WriteLn(num:0:2, ' squared is ', squared:0:2);
  until num = 0;

  WriteLn('Program ended.');
end.

