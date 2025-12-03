program SwitchExample;
var
  a: integer;
begin
  readln(a);
  
  case a of
    10: writeln('Value of a is 10');
    20: writeln('Value of a is 20');
    30: writeln('Value of a is 30');
  else
    writeln('Value of a is not matching');
  end;
  
  writeln('Exact value of a is : ', a);
end.

