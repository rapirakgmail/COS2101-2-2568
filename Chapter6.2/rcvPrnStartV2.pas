program StarPattern;

var
  n, j: integer;

procedure PrnStar(n:integer);
begin
  if( n <=0) then
    exit();
  write('*');
  PrnStar(n-1);
end;

procedure makeStar(n:integer);
begin
  if( n <=0) then
    exit();
  PrnStar(n);
  writeln;
  makeStar(n-1);
end;

begin
 makeStar(4);
end.


