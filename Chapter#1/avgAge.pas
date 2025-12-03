program AverageStats;

const
  numPerson = 3;
var
  sex, age, stat, degr, tyear: array[1..numPerson] of Integer;
  i: Integer;
  avg_age, avg_expr: Real;
  numAgeAbove, numYearAbove: Integer;
begin
  { Input data }
  for i := 1 to numPerson do
  begin
    Write('sex = ');    ReadLn(sex[i]);
    Write('age = ');    ReadLn(age[i]);
    Write('stat = ');   ReadLn(stat[i]);
    Write('degr = ');   ReadLn(degr[i]);
    Write('tyear = ');  ReadLn(tyear[i]);
  end;

  avg_age := 0;
  avg_expr := 0;

  { Compute sums }
  for i := 1 to numPerson do
  begin
    avg_age := avg_age + age[i];
    avg_expr := avg_expr + tyear[i];
  end;

  { Compute averages }
  avg_age := avg_age / numPerson;
  avg_expr := avg_expr / numPerson;
  
  numAgeAbove := 0;
  numYearAbove := 0;

  { Count how many are above average }
  for i := 1 to numPerson do
  begin
    if age[i] > avg_age then
      numAgeAbove := numAgeAbove + 1;

    if tyear[i] > avg_expr then
      numYearAbove := numYearAbove + 1;
  end;
 
  { Output results }
  WriteLn('AVG AGE  = ', avg_age:0:2);
  WriteLn('NUMBER OF AGE ABOVE AVERAGE = ', numAgeAbove);
  WriteLn('AVG EXPR = ', avg_expr:0:2);
  WriteLn('NUMBER OF YEAR ABOVE AVERAGE = ', numYearAbove);
end.
