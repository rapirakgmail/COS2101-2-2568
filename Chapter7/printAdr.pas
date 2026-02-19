program PrintVariablesAndAddresses;

var
  x: Integer;
  number: real;
  ch: Char;

begin
  x := 50;
  number := 40.4;
  ch := 'A';

  Writeln('x= ', x, ' , addr x= ', HexStr(@x));
  Writeln('number= ', number:0:6, ' , addr number= ', HexStr(@number));
  Writeln('ch= ', ch, ' , addr ch= ', HexStr(@ch));
end.

