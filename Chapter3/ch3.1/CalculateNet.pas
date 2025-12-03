program CalculateNet;
var
  salary, commision, tax, Net: real;
begin
  Write('salary = ');
  ReadLn(salary);

  Write('commision = ');
  ReadLn(commision);

  tax := salary * 0.05;
  Net := salary - tax + commision;

  Write('Net = ');
  WriteLn(Net:0:2); // แสดงผลทศนิยม 2 ตำแหน่ง
end.

