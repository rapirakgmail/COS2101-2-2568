program DoSomething4Example;

function DoSomething1(var i, j: Integer): Integer;
var
  k: Integer;
begin
  ReadLn(i);
  ReadLn(j);
  ReadLn(k);
  exit(k);
end;

function DoSomething2(var i, j ,k :Integer): Integer;
begin
  ReadLn(i);
  ReadLn(j);
  ReadLn(k);
  exit(0); // 0 -> status of function 
end;

procedure DoSomething3(var i, j ,k :Integer;
begin
  ReadLn(i);
  ReadLn(j);
  ReadLn(k);
end;

var
  a, b, c: Integer;
begin
  c := DoSomething1(a, b);
  DoSomething2(a, b,c);
  DoSomething3(a, b,c);
end.

