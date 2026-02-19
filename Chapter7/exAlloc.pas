program AverageHeight_NewDispose;

type
  PFloatArray = ^TFloatArray;
  
var
  i, N: Integer;
  height: PFloatArray;
  sum, avg: real;

begin
  sum := 0;

  write('Input number of students : ');
  readln(N);

  { allocate N elements }
  new(height);

  for i := 1 to N do
  begin
    writeln('Input heights for ', i, ' students');
    readln(height^[i]);
  end;

  for i := 1 to N do
    sum := sum + height^[i];

  avg := sum / N;

  writeln('Average height = ', avg:0:2);

  { deallocate memory }
  dispose(height);
end.

