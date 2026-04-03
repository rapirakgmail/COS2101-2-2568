program StarPattern;
procedure PStar(i,n:integer);
begin
  if i > n then
    exit()
  else
  begin
     write('*');
     PStar(i+1,n);
  end;
end;

procedure MStar( n:integer);
begin
 if( n <= 0 ) then
    exit()
 else
 begin
    PStar(1,n);
    writeln;
    Mstar( n -1 );
 end;
end;
var
  n, j: integer;
begin
  n := 4;
  MStar(  4 );  
end.