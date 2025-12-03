program VariableExample;
var
  x, y: Integer;
begin
  x := 50;
  y := 80;
  x := y;
  y := 90;
  x := x + y;
  WriteLn(y);
  WriteLn(x);
end.
