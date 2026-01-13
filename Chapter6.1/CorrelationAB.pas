program CorrelationAB;
const
    n = 3;

type 
    vector= array[1..n] of Real;

function GetData():vector;
var
  i: Integer;
  Z: vector;
begin
  for i := 0 to n - 1 do
  begin
    Write('Enter value [', i + 1, ']: ');
    ReadLn(Z[i]);
  end;
  exit(z);
end;

function Sum( Z: vector): Real;
var
  s: Real;
  i: Integer;
begin
  s := 0;
  for i := 1 to n  do
    s := s + Z[i];
  exit(s);
end;

function MultAry( W, X:vector): vector;
var
  i: Integer;
  Z: vector;
begin
  for i := 1 to n  do
    Z[i] := W[i] * X[i];
  exit(Z);
end;

var
  A, B, T: vector;
  A_bar, B_bar, corrAB, X, Y: Real;
  AB_bar, AA_bar, BB_bar: Real;

begin
  WriteLn('Input DATA of Matrix A');
  A := GetData();
  WriteLn('Input DATA of Matrix B');
  B := GetData();

  A_bar := Sum(A);
  B_bar := Sum(B);

  T := MultAry(A, A );
  AA_bar := Sum(T);

  T := MultAry(B, B);
  BB_bar := Sum(T);

  T := MultAry(A, B);
  AB_bar := Sum(T);

  X := (n * AB_bar - A_bar * B_bar);
  Y := (n * (AA_bar - A_bar * A_bar)) * (n * (BB_bar - B_bar * B_bar));

  corrAB := X / Sqrt(Y);

  WriteLn;
  WriteLn('corr(A,B) = ', corrAB:0:6);

  WriteLn;
  Write('Press <Enter> to exit...');
  ReadLn;
end.
