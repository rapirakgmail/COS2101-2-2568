program StarPatternV3;
procedure print( j, n:integer);
begin
    if(j > n) then
      exit();
    write('*');
    print(j+1,n);
end;

var
  n:integer;

begin
  
  n := 4;
  while n > 0 do
  begin
    print(1,n);
    writeln;
    n := n - 1;
  end;
  
end.

