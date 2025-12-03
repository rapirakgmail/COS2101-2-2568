program modExample;

var
  num, unit_digit: integer;

begin
  Write('num = ');
  ReadLn(num);

  unit_digit := num mod 10;

  WriteLn('unit_digit = ', unit_digit);
end.

