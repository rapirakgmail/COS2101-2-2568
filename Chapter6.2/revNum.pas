program reverseDigits;

procedure reverse(number: Integer);
begin
  if number <> 0 then
  begin
    Write(number mod 10);
    reverse(number div 10);
  end;
end;

var
  n: Integer;
begin
  Write('Enter number: ');
  ReadLn(n);

  reverse(n);
  WriteLn;
end.
