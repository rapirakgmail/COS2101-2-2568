program PointerRecordFunctionDemo;

type
  TPoint = record
    x : Integer;
    y : Integer;
  end;
  PTPoint = ^TPoint;
  PInt   = ^Integer;

function GetInput : TPoint;
var
  p1 : TPoint;
begin
  p1.x := 20;
  p1.y := 30;
  exit( p1 );
end;

var
  px : TPoint;
function GetInputPtr():PTPoint;
begin
  px.x := 120;
  px.y := 130;
  exit( @px );
end;

procedure Output(p2 : PTPoint; x : PInt);
begin
  writeln('1.p2^.x = ', p2^.x, ' , p2^.y = ', p2^.y);
  p2^.x := p2^.x +100;
  p2^.y := p2^.y +100;
  writeln('2.p2^.x = ', p2^.x, ' , p2^.y = ', p2^.y);
  writeln('3.x^ = ', x^);
  x^ := x^ +100;
  writeln('4.x^ = ', x^);
  
end;

var
  p1 : TPoint;
  p2 : PTPoint;
  z  : Integer;
  
begin
  z  := 10;
  p1 := GetInput();
  Output(@p1, @z);

  writeln('5.p1.x = ', p1.x, ' , p1,y = ', p1.y);
  writeln('6.z = ', z);

  p2 := GetInputPtr();
  writeln('7.p2^.x = ', p2^.x, ' , p2^.y = ', p2^.y);

end.
