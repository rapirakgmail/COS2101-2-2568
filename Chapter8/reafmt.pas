program ReadTeacherInfo;

var
  f: Text;
  id: string[9+1]; //add 1 for spc
  no: Integer;
  level: string[1+1]; //add 1 for spc
  grade: real;
  score: Integer;
  code: string[4+1]; //add 1 for spc
  group:Integer;
//T65001001 1 A 1.1 10 A001 -3
begin
  Assign(f, 'teacherInfo.txt');
  Reset(f);   { เปิดไฟล์เพื่ออ่าน }

  while not Eof(f) do
  begin
    ReadLn(f, id, no,level, grade,score,code,group);

    Writeln('ID    : ', id);
    Writeln('No    : ', no);
    Writeln('level    : ', level);
    Writeln('Grade : ', grade:0:2);
    Writeln('Score : ', score);
    Writeln('Code  : ', code);
    Writeln('group  : ', group);
    Writeln('----------------------');
  end;

  Close(f);   { ปิดไฟล์ }
end.
