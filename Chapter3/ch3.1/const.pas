program BasicTemplate;
const
 { immutable variable }
 maxInt    = 100;           //Integer
 maxFloat  = 55.5;          //real/float
 maxString = 'max-string';  //string
 bFlag     = true;          //boolean 
var
  { mutable variable }
  a, b, sum: Integer;
  name: string;

begin
  a := 10;      { initial variable }
  b := maxInt;  //initial variable

  sum := a + b;
  writeln('Sum = ', sum);
  writeln('bFlag = ', bFlag);
 {  
    maxInt := 200; 
    maxString := 'new-string'
 }
  
  readln;  { Wait for user before exit }
end.
