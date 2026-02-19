program AllocateArrayAndStruct;

type
  { ---------- array of Integer ---------- }
  TIntArray = array[1..5] of Integer;
  PIntArray = ^TIntArray;

  { ---------- record ---------- }
  TStudent = record
    id: Integer;
    score: Integer;
  end;

  { ---------- array of record ---------- }
  TStudentArray = array[1..3] of TStudent;
  PStudentArray = ^TStudentArray;

  PStudent = ^TStudent;

var
  IntArr: PIntArray;
  StuArr: PStudentArray;
  pStu: PStudent;
  i: Integer;
begin
  { ===== allocate ===== }
  New(IntArr); //array of int
  New(StuArr); //array of TStudent
  New(pStu);   //TStudent

  { ===== use: array of Integer ===== }
  for i := 1 to 5 do
    IntArr^[i] := i * 10;

  { ===== use: array of record ===== }
  for i := 1 to 3 do
  begin
    StuArr^[i].id := i;
    StuArr^[i].score := i * 25;
  end;

  { ===== example access ===== }
  WriteLn('IntArr[3] = ', IntArr^[3]);
  WriteLn('Student 2: id=', StuArr^[2].id,
          ' score=', StuArr^[2].score);

  pStu^.id    := 1000;
  pStu^.score := 10000;
  WriteLn('pStu^.id=', pStu^.id, 
  ' pStu^.score=', pStu^.score);
  
  
  { ===== free ===== }
  Dispose(IntArr);
  Dispose(StuArr);
  Dispose(pStu);
end.
