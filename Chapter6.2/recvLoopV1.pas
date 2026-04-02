program ForLoopExample1;

procedure print( i:Integer );
begin
   if( i<=0) then
   begin
     exit();
   end;
  print( i-1 );
  WriteLn('Line No.', i);
end;

begin
  print(3);
end.

