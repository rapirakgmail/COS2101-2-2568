program EmployeeAverage;
const numPerson = 3; //ค่าคงที
type
  Employee = record
    sex: Integer;
    age: Integer;
    stat: Integer;
    degr: Integer;
    tyear: Integer;
  end;

var
  person: array[1..numPerson] of Employee;
  i: Integer;
  avg_age, avg_expr: Real;
  numAgeAbove, numYearAbove: Integer;

begin
  { Input data for first 2 employees }
  for i := 1 to numPerson do
  begin
    Write('sex(1-2) = ');   ReadLn(person[i].sex);
    Write('age = ');   ReadLn(person[i].age);
    Write('stat (1-3) = ');  ReadLn(person[i].stat);
    Write('degr(1-3) = ');  ReadLn(person[i].degr);
    Write('tyear = '); ReadLn(person[i].tyear);
  end;

  avg_age := 0;
  avg_expr := 0;

  { Compute sums }
  for i := 1 to numPerson do
  begin
    avg_age := avg_age + person[i].age;
    avg_expr := avg_expr + person[i].tyear;
  end;

  avg_age := avg_age / numPerson;      
  avg_expr := avg_expr / numPerson;    

  numAgeAbove := 0;
  numYearAbove := 0;

  { Count how many are above average }
  for i := 1 to numPerson do
  begin
    if person[i].age > avg_age then
      numAgeAbove := numAgeAbove + 1;

    if person[i].tyear > avg_expr then
      numYearAbove := numYearAbove + 1;
  end;
 
  { Output results }
  WriteLn('AVG AGE  = ', avg_age:0:2);
  WriteLn('NUMBER OF AGE ABOVE AVERAGE = ', numAgeAbove);
  WriteLn('AVG EXPR = ', avg_expr:0:2);
  WriteLn('NUMBER OF YEAR ABOVE AVERAGE = ', numYearAbove);
end.


