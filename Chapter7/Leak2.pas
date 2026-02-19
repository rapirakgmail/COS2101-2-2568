program Leak2;
type
  PInt = ^Integer;
var
  p: PInt;
begin
  New(p);
  p^ := 5;

  New(p);  { pointer เดิมหายไป }
  p^ := 10;

  Dispose(p);
end.
