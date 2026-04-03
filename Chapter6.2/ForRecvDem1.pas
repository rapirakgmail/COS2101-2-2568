program ForLoopExample1;

procedure print( i:Integer );
begin
   if( i<=0) then
   begin
     exit();
   end;
  WriteLn('No. ', i);
  print( i-1 );
end;

begin
  print(4);
end.




