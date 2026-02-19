type
  ArryInt = array[1..5] of Integer;
  PArryInt = ^ArryInt;

function newArray():PArryInt;
var p:PArryInt;
   i:Integer;
begin
 new(p);
 for i:=1 to 5 do
   p^[i] := i;
 exit(p);
end;

procedure print( p:PArryInt );
var   i:Integer;
begin
 for i:=1 to 5 do
   writeln( 'p^[',i,'] =', i);
end;

procedure delArray( p:PArryInt );
begin
 dispose(p);
 p := nil;
end;

procedure delArrayRef( var p:PArryInt );
begin
 dispose(p);
 p := nil;
end;

var
  pA : PArryInt;
  pB : PArryInt;

begin
  pA := newArray();
  writeln( 'pA = ', HexStr(pA));
  print(pA);
  delArray(pA);

  writeln( 'pA = ', HexStr(pA));

  pB := newArray();
  writeln( 'pB = ', HexStr(pA));
  print(pB);
  delArrayRef(pB);

 writeln( 'pB = ', HexStr(pB));
 
end.


