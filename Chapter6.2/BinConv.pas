program BinaryConverter;
var
  x, b: integer;

begin
  
  write('pls, enter data (int): ');
  readln(x);
  
  while x <> 0 do
  begin
    b := x mod 2;
    x := x div 2;
    writeln(b);
  end;

end.


