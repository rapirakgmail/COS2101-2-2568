program arrayGuide;
const
    n = 3;
type 
    vector= array[1..n] of Real;

function GetData():vector;
var
  Z: vector;
begin
  : 
  exit(z);
end;

procedure ReadData(var Z: vector);
begin
  : 
end;

function Sum( Z: vector): Real;
var
  s: Real;
begin
  s := 0;
  :
  exit(s);
end;

function Mult(var Z: vector): Real;
var
  s: Real;
  C : array [1..3] of integer;
  E : vector;
begin
  s := 0;
  :
  exit(s);
end;

var
  A, B : vector;
  A_bar,B_bar : real;
  C : array [1..3] of integer;
begin
  WriteLn('Input DATA of Matrix A');
  A := GetData();
  WriteLn('Input DATA of Matrix B');
  ReadData( B );        //** best
  A_bar := Sum(A);
  B_bar := Mult(B);     //** best

end.



