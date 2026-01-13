program Example;

var
  num1:Integer;  { global }

procedure ShowResult(x: Integer);
begin
  writeln('The result is: ', x);
end;

procedure ShowTitle();
begin
  writeln('Title');
end;

begin
  num1 := 10;
  ShowTitle();
  ShowResult(num1);
  ShowResult(20);
  
end.

