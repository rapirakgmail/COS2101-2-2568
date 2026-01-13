program GlobalLocalExample2;

var
  g, i: Integer;  // global variables

procedure myfunction;
var
  l: Integer;     // local variable
  g: Integer;     // local variable shadows global 'g'
begin
  g := 40;
  i := i + 1;     // equivalent to ++i
  l := i;         // l = ++i
  writeln('l = ', l);
  writeln('g (myfunction) = ', g);
  g := 80;        // local 'g' only affects this procedure
  {writeln('k = ',k); }
end;

var
  j, k: Integer;  // local to main program

begin
  g := 10;
  i := 3;
  j := 2;
  k := i + j;
  writeln('before g = ', g);
  writeln('j = ', j, ' and k = ', k);
  writeln('i = ', i, ' before the call to myfunction.');
  myfunction;
  writeln('i = ', i, ' after the call to myfunction.');
  writeln('after g = ', g);
  readln;
end.


