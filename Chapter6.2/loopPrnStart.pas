program StarPattern;

var
  n, j: integer;

begin
  
  n := 4;
  while n > 0 do
  begin
    for j := 0 to n - 1 do
    begin
      write('*');
    end;
    writeln;
    n := n - 1;
  end;
  
end.
