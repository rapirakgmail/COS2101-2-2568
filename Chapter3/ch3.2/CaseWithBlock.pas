program CaseWithBlock;

var
  day: integer;

begin
  write('Enter day number (1-7): ');
  readln(day);

  case day of
    1: begin
         writeln('Monday');
         writeln('Start of the week');
       end;
    5: begin
         writeln('Friday');
         writeln('Almost weekend!');
       end;
    6, 7: writeln('Weekend!');
    else
      writeln('Invalid day');
  end;
end.

