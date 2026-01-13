
program PassByValueAndReference;

procedure pass_val( l: Integer;  var y: real );
begin
  writeln(chr(9),'1.pass_val->l = ', l:0);
  writeln(chr(9),'1.pass_val->y = ', y:0:1);
  l := l * 2;
  y := y + 2;
  writeln(chr(9),'2.pass_val->l = ', l:0);
  writeln(chr(9),'2.pass_val->y = ', y:0:1);
end;

var
  x: Integer;
  y: real;

begin
  y := 18.2;
  x := 3;
  writeln('before->x = ', x);
  writeln('before->y = ', y:0:1);
  
  pass_val( x, y );
  
  writeln('before->x = ', x);
  writeln('before->y = ', y:0:1);
  readln;
end.
