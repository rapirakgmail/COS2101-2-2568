Program PtrArry;
type
  TIntArray = array[1..5] of Integer;
  PIntArray = ^TIntArray;


var
  A : TIntArray;
  pA: PIntArray;
  i: Integer;

begin
  A[1] := 55;
  pA   := @A[2];

  for i := 1 to 4 do
  begin
     pA^[i] := (i) * 10;
  end;
  
  for i := 1 to 5 do
    writeln(A[i]);

end.




