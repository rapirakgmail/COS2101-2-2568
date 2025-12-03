program boolType;
var
  flag: boolean;
begin
  flag :=  true;
  writeln( 'flag = ', flag);
  flag :=  false;
  writeln( 'flag = ', flag);
  
  // readln( flag ); { compile error }

end.

