program MatrixMultiply;

const
  n = 3;
type
  Matrix = array[1..n, 1..n] of Integer;

procedure GetData(var Z: Matrix);
var
  i, j: Integer;
begin
  Randomize;
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      { In real use, you could read from keyboard:
         Write('Row ', i, ' Col ', j, ': ');
         ReadLn(Z[i, j]);
      }
      Z[i, j] := Random(10);  { random number 0–9 }
      Write(Z[i, j]:5);
    end;
    Writeln;
  end;
end;

procedure MultiplyMatrix(var W, X: Matrix; var Z: Matrix);
var
  i, j, k, sum: Integer;
begin
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      sum := 0;
      for k := 1 to n do
        sum := sum + W[i, k] * X[k, j];
      Z[i, j] := sum;
    end;
  end;
end;

procedure PrintMatrix(var Z: Matrix);
var
  i, j: Integer;
begin
  Writeln('Value of Matrix C:');
  for i := 1 to n do
  begin
    for j := 1 to n do
      Write(Z[i, j]:5);
    Writeln;
  end;
end;

var
  A, B, C: Matrix;

begin
  Writeln('Input DATA of Matrix A:');
  GetData(A);

  Writeln('Input DATA of Matrix B:');
  GetData(B);

  MultiplyMatrix(A, B, C);

  PrintMatrix(C);
end.
