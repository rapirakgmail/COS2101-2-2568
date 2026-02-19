program ptrval;

var
  x: Integer;
  ptr: ^Integer;
begin
  x := 50;
  ptr := @x;

  Writeln('x= ', x, ' , addr x= ', HexStr(@x));
  Writeln('ptr = ', HexStr(ptr), ' , addr ptr= ', HexStr(@ptr));
  Writeln('ptr^ = ',ptr^ );
  ptr^ := 60; 
  Writeln('x= ', x, ' , ptr^= ', ptr^);
end.

