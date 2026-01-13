program PowerA;

var
  v1,v2: Integer;   { variable to store results }

{==== Function Declaration ====}
function PowerA(a: Integer): Integer;
begin
  Exit(a * a);   { immediately return a squared value }
end;

{==== Main Program Block ====}
begin
  v1 := PowerA(2);    { call PowerA(2) → returns 4 → assign to v1 }
  WriteLn('v1 = ', v1); { output: v = 4 }

  PowerA(4);    { call PowerA(4), result (16) ignored }

  v2 := PowerA(6) + PowerA(8); { 36 + 64 = 100 → assign 100 to v2 }
  WriteLn('v2 = ', v2);  { output: v2 = 100 }
  WriteLn('powerA(20) = ', PowerA(20));  { prints "powerA(20) = 400" }
end.

