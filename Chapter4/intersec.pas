
program intersection;
var
  A :array[1..10] of integer;
  B :array[1..10] of integer;
  iA,iB,i,x,nA,nB:integer;
begin
  write( 'A (-1)= ' );
  readln(x);
  i := 0;
  while( x <> -1) do
  begin
    i := i+1; 
    A[i] := x; 
    readln(x);
  end;
  nA := i;

  write( 'B (-1)= ' );
  readln(x);
  i := 0;
  while( x <> -1) do
  begin
    i := i + 1;
    B[i] := x; 
    readln(x);
  end;
  nB := i;
  
  for iA := 1  to nA do 
  begin
      for iB := 1  to nB do
      begin
          if ( A[ iA ] = B[ iB]) then
          begin
             writeln(  A[iA] );
          end;
      end;  
  end;
end.
