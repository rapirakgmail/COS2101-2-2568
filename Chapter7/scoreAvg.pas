program AverageDifferenceLoop;
var
  score: array[1..5] of real;
  avg, dif, sum: real;
  i:integer;
begin
  sum := 0;
  { --- Input 5 scores --- }
  for i := 1 to 5 do
  begin
    readln(score[i]);
    sum := sum + score[i];
  end;

  avg := sum / 5;

  writeln('average = ', avg:0:2);

  { --- Show differences --- }
  for i := 1 to 5 do
  begin
     dif := score[i] - avg;  
     writeln(dif:0:2);
  end;
end.
