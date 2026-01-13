program PassByReference1;

//in & out
procedure DoSomething1(x: Integer; var i: Integer);
begin
  i := x * 3;
end;

//uodate
procedure DoSomething2(var i: Integer);
begin
  i := i * 3;
end;


var
  x,result: Integer;
  
begin
  x := 30;

  DoSomething1(x, x);
  WriteLn(x);


  DoSomething2(x);
  WriteLn(x);

  DoSomething1(x, result);
  WriteLn(result);
  
end.

