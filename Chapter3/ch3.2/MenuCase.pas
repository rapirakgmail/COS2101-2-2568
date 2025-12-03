program MenuCase;

var
  menu, qty, cost: integer;

begin
  write('menu = ');
  readln(menu);
  
  write('qty = ');
  readln(qty);
  
  case menu of
    1: begin
         cost := qty * 40;
         writeln('cost = ', cost);
       end;
    2: begin
         cost := qty * 35;
         writeln('cost = ', cost);
       end;
    3: begin
         cost := qty * 45;
         writeln('cost = ', cost);
       end;
  else
    writeln('not has item');
  end;
end.
