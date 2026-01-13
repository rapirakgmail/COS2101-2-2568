program whichOne;
 
procedure PrintData1( x: integer);
begin
  writeln( ' x = ' , x);
end;

procedure PrintData2(var x: integer);
begin
  writeln( ' x = ' , x);
end;

var
 data:integer;

begin
  write( 'data (integer) = ' );
  read( data);
  PrintData1( data );
  PrintData2( data );

end.

