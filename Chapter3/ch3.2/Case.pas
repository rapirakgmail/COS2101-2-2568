program CaseExample;

var
  grade: char;

begin
  write('Enter grade (A/B/C/D/F): ');
  readln(grade);

  case grade of
    'A': writeln('Excellent!');
    'B': writeln('Good!');
    'C': writeln('Average.');
    'D': writeln('Below average.');
    'F': writeln('Fail.');
    else
      writeln('Invalid grade.');
  end;
end.

