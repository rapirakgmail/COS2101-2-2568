program incDecPtrInt;

uses
  SysUtils;

var
  arr: array[1..5] of Integer;
  p: ^Integer;
begin
  // Initialize the array
  arr[1] := 10;
  arr[2] := 20;
  arr[3] := 30;
  arr[4] := 40;
  arr[5] := 50;

  Writeln('sizeof(arr) = ', SizeOf(arr));
  Writeln('sizeof(arr[1]) = ', SizeOf(arr[1]), ' , @arr[1] = ', PtrUInt(@arr[1]));
  Writeln('sizeof(arr[2]) = ', SizeOf(arr[2]), ' , @arr[2] = ', PtrUInt(@arr[2]));

  p := @arr[1];  // Pointer to first element
  Writeln('1.p = ', PtrUInt(p), ' , ^p = ', p^, ' , @p = ', PtrUInt(@p));
  Inc(p);  // Pointer to first element
  Writeln('2.p = ', PtrUInt(p), ' , ^p = ', p^, ' , @p = ', PtrUInt(@p));
  Dec(p);  // Pointer to first element
  Writeln('3.p = ', PtrUInt(p), ' , ^p = ', p^, ' , @p = ', PtrUInt(@p));

end.
