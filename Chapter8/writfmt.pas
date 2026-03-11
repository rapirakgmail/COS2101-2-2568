program WriteTeacherInfo;

var
  f1,f2: Text;
  id: string[9+1]; //add 1 for spc
  no: Integer;
  level: string[1+1]; //add 1 for spc
  grade: real;
  score: Integer;
  code: string[4+1]; //add 1 for spc
  group:Integer;
//T65001001 1 A 1.1 10 A001 -3
begin
  Assign(f1, 'teacherInfo.txt');
  Reset(f1);   { เปิดไฟล์เพื่ออ่าน }

  Assign(f2, 'teacherInfo.out');
  //Rewrite(f2);   
  Append(f2);   

  while not Eof(f1) do
  begin
    ReadLn(f1, id, no,level, grade,score,code,group);

    Writeln('ID    : ', id);
    Writeln('No    : ', no);
    Writeln('level    : ', level);
    Writeln('Grade : ', grade:0:2);
    Writeln('Score : ', score);
    Writeln('Code  : ', code);
    Writeln('group  : ', group);
    Writeln('----------------------');
    if group > 0 then 
      Writeln(f2, id,' ', no,' ',level,' ', grade:0:2,' ',score,' ',code,' ',group);
  end;

  Close(f1);   { ปิดไฟล์ }
  Close(f2);
end.
