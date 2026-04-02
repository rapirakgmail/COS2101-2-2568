program ForwardDigits;

procedure Forward(number: Integer);
begin
  if number <> 0 then
  begin
    Forward(number div 10);
    Write(number mod 10);
  end;
end;

var
  n: Integer;
begin
  Write('Enter number: ');
  ReadLn(n);

  Forward(n);
  WriteLn;
end.


