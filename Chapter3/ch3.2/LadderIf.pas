program LadderIfExample;

var
  score: integer;

begin
  Write('Enter your score: ');
  ReadLn(score);

  if score >= 90 then
    WriteLn('Grade A')
  else if score >= 80 then
    WriteLn('Grade B')
  else if score >= 70 then
    WriteLn('Grade C')
  else if score >= 60 then
    WriteLn('Grade D')
  else
    WriteLn('Grade F');
end.

