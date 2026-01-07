program ExampleDepartmentRoom;

type
  DEPARTMENT = record
    DepNm: string[40];
    Dep_no: Integer;
  end;

  ROOM = record
    rom_no: Integer;
    Rom: string[20];
    Dept: DEPARTMENT;   { nested record }
  end;

var
  r1: ROOM;
begin
  { Assign department info }
  r1.Dept.DepNm := 'Computer Science';
  r1.Dept.Dep_no := 101;

  { Assign room info }
  r1.rom_no := 12;
  r1.Rom := 'Lab A';

  { Display output }
  writeln('Room No: ', r1.rom_no);
  writeln('Room Name: ', r1.Rom);
  writeln('Department Name: ', r1.Dept.DepNm);
  writeln('Department No: ', r1.Dept.Dep_no);
end.

