program NumberSeriesMenu;

function GetChoice(): Integer;
var
  choice: Integer;
begin
  repeat
    WriteLn('Which series do you wish to display?');
    WriteLn('1 - Odd numbers from 1 to 30');
    WriteLn('2 - Even numbers from 1 to 30');
    WriteLn('3 - All numbers from 1 to 30');
    Write('Enter choice (1-3): ');
    ReadLn(choice);
    if (choice < 1) or (choice > 3) then
      WriteLn('Choice must be 1, 2, or 3');
  until (choice >= 1) and (choice <= 3);
  Result := choice;
end;

procedure PrintOdd;
var
  i: Integer;
begin
  for i := 1 to 30 do
    if (i mod 2 = 1) then
      Write(i, ' ');
  WriteLn;
end;

procedure PrintEven;
var
  i: Integer;
begin
  for i := 1 to 30 do
    if (i mod 2 = 0) then
      Write(i, ' ');
  WriteLn;
end;

procedure PrintAll;
var
  i: Integer;
begin
  for i := 1 to 30 do
    Write(i, ' ');
  WriteLn;
end;

var
  choice: Integer;
begin
  choice := GetChoice;

  case choice of
    1: PrintOdd;
    2: PrintEven;
    3: PrintAll;
  end;

  WriteLn;
  Write('Press <Enter> to exit...');
  ReadLn;
end.

