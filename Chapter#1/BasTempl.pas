
program BasicTemplate;

var
  { mutable variable }
  a, b, sum: Integer;
  name: string;

begin
  a := 10;      { initial variable }
  b := 20;  //initial variable

  sum := a + b;
  writeln('Sum = ', sum);
 

 {  
    maxInt := 200; 
    maxString := 'new-string'
 }
  
  writeln('press any key');
  readln;  { Wait for user before exit }
end.

