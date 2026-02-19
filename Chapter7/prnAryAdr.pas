program PrintArryAdr;

var
  s1:string[8];
  s2:array [1..8] of char ;
begin

  s1 := 'A';
  s2[1] := 'B';
  Writeln( 's1 = ',s1[1]);
  Writeln( 's2 = ',s2[1]);

  Writeln( '@s1[1] = ', PtrUInt( @s1[1] ) );
  Writeln( '@s1[2] = ', PtrUInt( @s1[2] ) );

  Writeln( '@s2[1] = ', PtrUInt( @s2[1] ) ) ;
  Writeln( '@s2[2] = ', PtrUInt( @s2[2] ) ) ;

  
end.

