program BinaryConverter;

procedure cov2bin(x:integer);
 var b: integer;
begin
 if( x <> 0) then
 begin
    b := x mod 2;
    x := x div 2;
    writeln(b);
    cov2bin(x);
 end;
end;

var x:integer;
begin
  
  write('pls, enter data (int): ');
 // readln(x);
 writeln;
  cov2bin(5);
end.

