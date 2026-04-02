program RecursiveProcedureTemplate;

procedure RecursiveProc(n: Integer);
begin
  if n <= 0 then
  begin
    // Base case: stop recursion
    WriteLn('Reached base case with n = ', n);
    Exit;
  end;

  // Do something before recursive call
  WriteLn('Before recursive call, n = ', n);

  // Recursive call with modified parameter
  RecursiveProc(n - 1);

  // Do something after recursive call
  WriteLn('After recursive call, n = ', n);
end;

begin
  RecursiveProc(5);
end.
