//areaWH.pas
program areaWH;
var
  width,height,area: integer;
begin
  write( 'width=' );
  readln( width );

  write( 'height=' );
  readln( height );
  
  area := width*height;
  Writeln('area = ',area);
end.


