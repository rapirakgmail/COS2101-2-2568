program SwapStructExample;

type
  TMyStruct = record
    x: Integer;
    y: Integer;
  end;

procedure Swap(var ms: TMyStruct);
var
  temp: Integer;
begin
  temp := ms.x;
  ms.x := ms.y;
  ms.y := temp;
end;

var
  ms: TMyStruct;
begin
  ms.x := 50;
  ms.y := 60;

  WriteLn;
  WriteLn('Before swap in main:');
  WriteLn('x = ', ms.x, #9, 'y = ', ms.y);

  Swap(ms);

  WriteLn;
  WriteLn('After swap in main:');
  WriteLn('x = ', ms.x, #9, 'y = ', ms.y);
end.
