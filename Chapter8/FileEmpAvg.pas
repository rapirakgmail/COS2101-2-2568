program TeacherInfo;
type
  employee = record
    Tcode : string[9+1];
    sex   : Integer;
    tyear : Integer;
    degr  : Integer;
    stat  : Integer;
  end;

var
  person : array[1..150] of employee;
  f      : Text;
  i, count : Integer;
  avg_expr : Real;

begin
  Assign(f, 'empData.txt');
  Reset(f);

  Writeln('code':12, 'sex':6, 'year':6, 'degr':6, 'stat':6);

  count := 0;

  while not Eof(f) do
  begin

    count := count+1;

    ReadLn(f,
           person[count].Tcode,
           person[count].sex,
           person[count].tyear,
           person[count].degr,
           person[count].stat);

    Writeln(person[count].Tcode:12,
            person[count].sex:6,
            person[count].tyear:6,
            person[count].degr:6,
            person[count].stat:6);
  end;

  Close(f);

  { คำนวณค่าเฉลี่ยปีที่สอน }
  avg_expr := 0;
  for i := 1 to count do
    avg_expr := avg_expr + person[i].tyear;

  if count > 0 then
    avg_expr := avg_expr / count;

  Writeln;
  Writeln('AVG EXPR = ', avg_expr:0:2);

end.
