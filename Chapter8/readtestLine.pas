program ReadFileWithPosition;
uses
  SysUtils;    
var
  fp1: File;
  ch: Byte;
  pos: Int64;
  bytesRead: Integer;
begin
  Assign(fp1, 'testLine.txt');
  Reset(fp1, 1);
  while True do
  begin
    pos := FilePos(fp1);
    BlockRead(fp1, ch, 1, bytesRead);
    if bytesRead = 0 then
      Break;

    Writeln(Char(ch), ' ', IntToHex(ch,2), ' ', pos);
  end;

  Writeln;
  Writeln('data @pos 3');
  Seek(fp1, 3);
  pos := FilePos(fp1);
  BlockRead(fp1, ch, 1, bytesRead);

  if bytesRead > 0 then
    Writeln(Char(ch), ' ', IntToHex(ch,2), ' ', pos);

  Close(fp1);
end.

