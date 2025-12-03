program TypeConversionExample;
var
  i: integer;
  r: real;
  s: string;

begin
  // 1. Integer -> Real
  i := 5;
  r := i;  // ใน Pascal สามารถกำหนดตรง ๆ ก็ได้
  WriteLn('Integer -> Real: ', r:0:2);  // แสดง 5.00
  //
  r := real(i);  // ใน Pascal สามารถกำหนดตรง ๆ ก็ได้
  WriteLn('Integer -> Real: ', r:0:2);  // แสดง 5.00

  // 2. Real -> Integer
  r := 3.7;
  i := Trunc(r);  // ตัดทศนิยม
  WriteLn('Real -> Integer (Trunc): ', i);
  i := Round(r);  // ปัดเป็นจำนวนเต็ม
  WriteLn('Real -> Integer (Round): ', i);
  //i := r;   { compiler error }
end.
