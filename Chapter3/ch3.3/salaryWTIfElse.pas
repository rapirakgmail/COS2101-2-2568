
program salaryWTIfElse;
var
 salary,commission,net:real;
begin

  while ( true) do
  begin
     write( 'salary (-999)= ');
     read( salary);
     if (salary > 0 ) then
       begin
         write( 'commission = ');
         read( commission );
         net := salary-(salary*0.5/100.0)+ commission;
         writeln( 'net = ',net:0:2);
       end
     else
       break;
  end;
  write('end app');
end.
