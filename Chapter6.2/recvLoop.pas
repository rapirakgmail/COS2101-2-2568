program ForLoopExample1;

procedure print( i:Integer );
begin
   if( i>3) then
   begin
     exit();
   end;
  WriteLn('Line No.', i);
  print( i+1 );
end;

begin
  print(1);
end.




