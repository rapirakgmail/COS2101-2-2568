program CheckY;
var
  Y: Integer;
begin
  Write('Y = ');
  ReadLn(Y);

  if (Y < 0) or (Y > 100) then
    Y := Y + 50
  else
    Y := Y - 30;

  WriteLn(Y);
end.

