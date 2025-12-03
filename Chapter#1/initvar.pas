program Hello;
var f:real;
    i:integer; {undefined value }
begin
  f := 2.0;  {inital value }
  writeln ('f = ' , f ,  ', addr f = ' , PtrUInt( @f) );
  writeln ('i = ' , i ,  ', addr i = ' , PtrUInt( @i) );
end.



