program BreakContinueExample;

var
  i: Integer;

begin

  for i := 1 to 10 do
  begin
    
    if i = 3 then
      break;
      
    writeln('i : ' , i );
  end;
  writeln('end : ' , i );
end.
