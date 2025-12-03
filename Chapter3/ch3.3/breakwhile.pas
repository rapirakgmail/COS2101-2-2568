program BreakContinueExample;
var
  i: Integer;
begin
  i := 1;
  while( true ) do
  begin
    
    if i = 3 then
      break;

    writeln('i : ' , i );
    i := i+1;

  end;
  writeln('end : ' , i );

end.






