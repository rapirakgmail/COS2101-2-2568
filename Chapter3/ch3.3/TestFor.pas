program TestFor;
var
  x: integer;
begin
  for x := 1 to 4 do
    WriteLn('inside: x = ', x);
  WriteLn('after: x = ', x);  { ดูค่าว่าคอมไพเลอร์ของคุณแสดงอะไร }
end.
