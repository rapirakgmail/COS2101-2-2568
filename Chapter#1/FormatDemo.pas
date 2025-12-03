program FormatDemo;
var
  height: real;
begin
  height := 175.5432;
  writeln('height: ', height);        { แสดงค่าจริง }
  writeln('height: ', height:0:2);    { แสดงทศนิยม 2 ตำแหน่ง }
  writeln('height: ', height:10:2);   { จัดกว้าง 10 ช่อง ทศนิยม 2 ตำแหน่ง }
end.

