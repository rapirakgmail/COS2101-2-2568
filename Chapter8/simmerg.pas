program MergeTwoFiles;
var
  fileA, fileB, fileC: Text;
  num1, num2: Integer;
  f1, f2: Boolean;

begin
  Assign(fileA, 'class1.txt');
  Reset(fileA);

  Assign(fileB, 'class2.txt');
  Reset(fileB);

  Assign(fileC, 'class3.out');
  Rewrite(fileC);

  Read(fileA, num1);
  Read(fileB, num2);

  while not Eof(fileA) and not Eof(fileB) do
  begin
    if num1 < num2 then
    begin
      Writeln(fileC, num1);
      Read(fileA, num1);
    end
    else if num2 < num1 then
    begin
      Writeln(fileC, num2);
        Read(fileB, num2);
    end
    else
    begin
      Writeln(fileC, num1);
      Read(fileA, num1);
      Read(fileB, num2);
    end;
  end;

  Close(fileA);
  Close(fileB);
  Close(fileC);
end.

