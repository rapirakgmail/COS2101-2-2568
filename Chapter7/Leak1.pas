program Leak1;
type
  PInt = ^Integer;
var
  p: PInt;
begin
  New(p);
  p^ := 10;
  { ลืม Dispose(p); }
end.
