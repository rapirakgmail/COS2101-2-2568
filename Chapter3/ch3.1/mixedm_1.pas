program VariableExample;
var
  x:integer;
  y:real;
begin
  x := 2;
  y := 3.0;
  WriteLn('result-1=', x + y );
  WriteLn('result-2=', x + Trunc(y) );
  WriteLn('result-3=', real(x) + y );
  WriteLn('result-4 =', x / y );
end.
