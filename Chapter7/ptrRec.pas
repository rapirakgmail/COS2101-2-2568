program PointerRecordDemo;

type
  TPoint = record
    x : Integer;
    y : Integer;
  end;

var
  p1 : TPoint;
  p2 : ^TPoint;

begin
  p1.x := 20;
  p1.y := 30;

  p2 := @p1;

  writeln('p1.x = ', p1.x, ' , p1.y = ', p1.y);
  writeln('p2^.x = ', p2^.x, ' , p2^.y = ', p2^.y);
end.
