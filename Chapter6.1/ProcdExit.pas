program ProcedureWithExitExample;

procedure PrintMessage(score: Integer);
begin
  if score < 0 then
  begin
    writeln('Invalid score!');
    exit;   { stop procedure immediately }
  end;

  writeln('Failing grade. Try harder next time!');
    
end;

{---------------------------------------------}
{ Main program block }
{---------------------------------------------}
var
  s: Integer;
begin
  PrintMessage(-10);
  PrintMessage(10);
  writeln('end app');
end.

