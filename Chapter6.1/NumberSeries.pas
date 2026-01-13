program NumberSeries;
var
  choice, i: integer;

begin

  repeat
    writeln('Which series do you wish to display?');
    writeln('1 - Odd numbers from 1 to 30');
    writeln('2 - Even numbers from 1 to 30');
    writeln('3 - All numbers from 1 to 30');
    write('Enter your choice (1-3): ');
    readln(choice);
    
    if (choice < 1) or (choice > 3) then
      writeln('Choice must be 1, 2, or 3');

  until (choice >= 1) and (choice <= 3);

  case choice of
    1: begin
         for i := 1 to 30 do
           if (i mod 2 <> 0) then
             write(i, ' ');
         writeln;
       end;
    2: begin
         for i := 1 to 30 do
           if (i mod 2 = 0) then
             write(i, ' ');
         writeln;
       end;
    3: begin
         for i := 1 to 30 do
           write(i, ' ');
         writeln;
       end;
  end;

end.

