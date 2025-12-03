program avgWXY;
var
  w,x,y,Z,A: real;
begin
  Read( w , x , y);
  Z := w+x+y;
  A := Z/3.0;
  Writeln('W = ' , w:0:2 , ',X = ' , x:0:2 , ',Y = ' , y:0:2);
  Writeln('Z = ' , Z:0:2);
  Writeln('A = ' , A:0:2);
end.

