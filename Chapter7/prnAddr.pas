program PrintVariablesAndAddresses;

var
  x: Integer;
  ptr: ^Integer;
begin
  x := 50;
  ptr := @x;

  Writeln('x= ', x, ' , addr x= ', PtrUInt(@x) );
  Writeln('ptr = ', PtrUInt(ptr) , 
          ' , addr ptr= ', PtrUInt(@ptr) );
end.

