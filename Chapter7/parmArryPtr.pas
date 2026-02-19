Program PtrArry;
type
  TIntArray = array[1..5] of Integer;
  PIntArray = ^TIntArray;

procedure writeArry(P: PIntArray);
var
  i: Integer;
begin
  for i := 1 to 5 do
    writeln(P^[i]);
  writeln('---');  
end;

procedure FillArray(P: PIntArray);
var
  i: Integer;
begin
  for i := 1 to 5 do
    P^[i] := P^[i] + 100;
end;

procedure FillArrayRef(var P: TIntArray);
var
  i: Integer;
begin
  for i := 1 to 5 do
    P[i] := P[i] + 1000;
end;

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
  
  writeArry(@A);
  
  FillArray(@A);
  
  writeArry(@A);
  
  FillArrayRef(A);
  writeArry(@A);

end.

