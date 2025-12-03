program BasicTypes;

var
  age: integer;       { จำนวนเต็ม }
  height: real;       { จำนวนจริง (ทศนิยม) }
  grade: char;        { ตัวอักษรหนึ่งตัว }
  name: string;       { ข้อความหรือสตริง }
  passed: boolean;    { ค่าตรรกะ true/false }

begin
  { กำหนดค่าเริ่มต้นให้ตัวแปรแต่ละตัว }
  age := 25;
  height := 175.5;
  grade := 'A';
  name := 'Apirak';
  passed := true;

  { แสดงผลทางหน้าจอ }
  writeln('Age = ', age);
  writeln('Height = ', height);
  writeln('Grade = ', grade);
  writeln('Name = ', name);
  writeln('Passed = ', passed);
end.



