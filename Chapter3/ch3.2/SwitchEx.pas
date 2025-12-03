program SwitchExample;
var
menu: integer;
qty : integer;
cost : real;
begin
    write( 'menu ='); 
    readln(menu);
    write( 'qty ='); 
    readln(qty);
if menu = 1 then
begin
    cost := qty*40.0;
    write('cost = ', cost:0:2 );
end
else if menu = 2 then
     begin
        cost := qty*35.0;
        write('cost = ', cost:0:2 );
      end
     else if menu = 3 then
          begin
            cost := qty*45.0;
            write('cost = ', cost:0:2 );
          end
          else
              writeln('not has item');

end.

