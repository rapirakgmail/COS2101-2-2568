program StarPatternV1;

procedure PrnStar(n:integer);
begin
  if( n <=0) then
    exit();
  write('*');
  PrnStar(n-1);
end;

var
  n, j: integer;

begin
  
  n := 4;
  while n > 0 do
  begin
    PrnStar(n);
    writeln;
    n := n - 1;
  end;
  
end.