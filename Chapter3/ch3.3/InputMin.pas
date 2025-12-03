program InputUntilMinus999;
var
  x: Integer;

begin
  Write('Input (-999) x = ');
  ReadLn(x);

  while x <> -999 do
  begin
    WriteLn('x = ', x);
    Write('Input x (-999) = ');
    ReadLn(x);
  end;

end.

