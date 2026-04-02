program FactorialRecursive;

function Fact(n: Integer): Integer;
var sol1,solution:Integer;
begin
  if n = 0 then
    exit(1)                 { base case: 0! = 1 }
  else
  begin
    sol1 := Fact(n - 1);  { recursive call }
    solution := n * sol1;
	exit(solution);
  end;
end;

var
  n: Integer;
begin
  Write('Enter n: ');
  ReadLn(n);

  WriteLn(n, '! = ', Fact(n));
end.
