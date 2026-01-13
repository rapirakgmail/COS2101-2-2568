program VariableScopeExample;

var
  g: Integer = 0;   // global variable

procedure f1;
var
  f1_num: Integer;  // local variable
begin
  g := g + 1;
  writeln('1.1 f1_g = ', g , ' ,addr = ', PtrUInt(@g));
  writeln('1.2 f1_num = ', f1_num, ' ,addr = ', PtrUInt(@f1_num));  
  f1_num := f1_num + 1;
end;

procedure f2( g:Integer ; x:Integer); //parameter
begin
  writeln('2.1 f2_g = ', g, ' ,addr = ', PtrUInt(@g));
  writeln('2.2 f2_x = ', x, ' ,addr = ', PtrUInt(@x));
end;

procedure f3 ();
var
  g: Integer;  // local variable (ซ่อน global variable)
begin
  g := 100;
  writeln('3. f3_g = ', g, ' ,addr = ', PtrUInt(@g));
  {f1_num := 200;}
  {x := 200;}
end;


begin
  {f1_num := 100;}
  writeln('a. main_g is ', g, ' ,addr = ', PtrUInt(@g));
  f1;
  writeln('b. main_g is ', g);
  f2(20,10);
  writeln('c. main_g is ', g);
  f3;
  writeln('d. main_g is ', g);
  f1;
  writeln('e. main_g is ', g);
end.
