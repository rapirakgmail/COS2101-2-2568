program Computgrade;
var
 score : Integer;
 grade : char;
begin
  read( score);
  if (score >= 70 )then
       begin
          if( score >= 80) then
            grade := 'A'
          else 
             grade := 'B';
       end
   else
       begin
          if( score >= 60) then
            grade := 'B'
          else 
             grade := 'F';
       end;
   writeln('grade =',grade);       
end.
