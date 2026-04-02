program FactorialProduct;

var
  n, k: Integer;
  fact: Integer;

begin
  Write('Enter n: ');
  ReadLn(n);

  fact := 1;    { ค่าเริ่มต้น = empty product }

  for k := 1 to n do
    fact := fact * k;

  WriteLn(n, '! = ', fact);
end.
