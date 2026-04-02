program DecToHexConverter;
type
  binArray = array[1..19] of integer;
 
procedure Dec2Bin(x: integer; var bin: binArray ; i: integer; var n: integer);
var
  b: integer;
begin
  if x <> 0 then
  begin
    b := x mod 2;
    x := x div 2;
    bin[i] := b;
    n := i + 1;
    Dec2Bin(x, bin, i + 1, n);
  end;
end;

procedure Dec2Hex(x: integer; var bin: binArray ; i: integer; var n: integer);
var
  b: integer;
begin
  if x <> 0 then
  begin
    b := x mod 16;
    x := x div 16;
    bin[i] := b;
    n := i + 1;
    Dec2Hex(x, bin, i + 1, n);
  end;
end;

var
  x, i, j, n: integer;
  bin: binArray;
begin
  
  write('pls, enter data (int): ');
  //readln(x);
  x := 254; writeln;
  n := 0;
  Dec2Hex(x, bin, 0, n);

  for j := n - 1 downto 0 do
  begin
    case bin[j] of
      10: write('A');
      11: write('B');
      12: write('C');
      13: write('D');
      14: write('E');
      15: write('F');
    else
      write(bin[j]);
    end;
  end;

  writeln;
  
end.
