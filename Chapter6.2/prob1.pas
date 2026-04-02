

program SumDoWhileLoop;
function sum(y:integer):integer;
begin
  if( y<=10) then
     exit(0);
  
  exit( y+sum(y-10))
end;

begin
  writeln('sum = ', sum(50));
end.
