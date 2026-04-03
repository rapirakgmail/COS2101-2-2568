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
var
  n, j: integer;

begin
  n := 4;
  while n > 0 do
  begin
    PStar(1,n);
    writeln;
    n := n - 1;
  end;
end.