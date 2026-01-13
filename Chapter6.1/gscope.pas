program GlobalLocalExample;
var
  g, i: Integer;   // global variables

procedure myfunction;
var
  k: Integer;      // local variable
  g: Integer;      // local variable shadows global 'g'
begin
  g := 40;
  k := i;
  i := i + 1;      // equivalent to i++
  g := k;
  writeln('myfunction k :', k);
  writeln('myfunction g :', g);
end;

var
  j, k: Integer;

begin
  g := 10;
  i := 3;
  j := 2;
  k := i + j;
  writeln('1.main k :', k);
  writeln('1.main i :', i);
  myfunction;
  writeln('2.main k :', k);
  writeln('2.main j :', j);
  writeln('2.main i :', i);
  g := g + 1;
  myfunction();
  writeln('3.main k :', k);
  writeln('3.main j :', j);
  writeln('3.main g :', g);
  writeln('4.main i :', i);
  readln;
end.

