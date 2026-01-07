program ExampleScore;
type
  Score = record
    name: string[30];
    P1, P2, P3: Integer;
    M1, M2, M3: Integer;
    avgP, avgM: Real;
  end;
var
  std: array[1..50] of Score;
  i, imax: Integer;
  avg_max: Real;
  
begin
  { Input data }
  for i := 1 to 50 do
  begin
    write('Enter name of student ', i, ': ');
    readln(std[i].name);
    write('Enter P1, P2, P3: ');
    readln(std[i].P1, std[i].P2, std[i].P3);
    write('Enter M1, M2, M3: ');
    readln(std[i].M1, std[i].M2, std[i].M3);
  end;
  { Calculate averages }
  for i := 1 to 50 do
  begin
    std[i].avgP := (std[i].P1 + std[i].P2 + std[i].P3) / 3.0;
    std[i].avgM := (std[i].M1 + std[i].M2 + std[i].M3) / 3.0;
  end;
  { Find max avgM }
  avg_max := std[1].avgM;
  imax := 1;
  for i := 2 to 50 do
  begin
    if avg_max < std[i].avgM then
    begin
      avg_max := std[i].avgM;
      imax := i;
    end;
  end;
  writeln;
  writeln('Max name = ', std[imax].name);
  writeln('Max avgM = ', avg_max:0:2);
end.
