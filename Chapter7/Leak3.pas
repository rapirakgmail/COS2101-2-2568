program MemoryLeakDemo;

type
  TString10 = STRING[10];
  PString10 = ^TString10;

function GenString(): PString10;
var
  p: PString10;
begin
  New(p);
  p^ := 'Hi';          { ตั้งค่า string ถูกต้อง }
  exit(p);     { ownership → caller }
end;

var
  s: PString10;
begin
  WriteLn( GenString()^ );   
  s := GenString();
  WriteLn( s^ );
  Dispose(s);
end.
