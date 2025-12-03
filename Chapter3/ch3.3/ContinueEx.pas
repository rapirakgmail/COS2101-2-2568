program BreakContinueExample;

var
  i: Integer;

begin
  i := 0;    
  while i <> 10  do
  begin
    i := i +1;
    if i >= 4 then
      continue;
    writeln('i : ' , i );
  end;
  writeln('end : ' , i );
end.

