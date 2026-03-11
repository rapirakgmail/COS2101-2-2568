type
  PInt = ^Integer;

procedure PointerPassByValue(P: Pint);
begin
  writeln( #9,'A1.P= ', p^ );
  P^ := 10+P^;  
  writeln( #9,'A2.P= ',p^ );
end;

procedure PassByRef( var P: Integer);
begin
  writeln( #9,#9,'B1.P= ',p);
  P := 100+P;  
  writeln( #9,#9,'B2.P= ',p);
end;

var
   A : Integer;
  pA : PInt;

begin
  A :=  1;
  writeln( 'C1.A= ',A);
  
  PointerPassByValue(@A);
  writeln( 'C2.A= ',A);

  PassByRef(A);
  writeln( 'C3.P= ',A);
 
  //PassByRef(@A);
  //writeln( 'C3.P= ',A);
  
  writeln;
  pA := @A;
  pA^ := 2;
  writeln( 'C1.P= ',A);
  
  PointerPassByValue(pA);
  writeln( 'C2.P= ',A);
  
  PassByRef( pA^ );
  writeln( 'C3.P= ',A);
  
  //PointerPassByValue( @pA );
  //PassByRef( @pA );
  //writeln( 'C4.P= ',A);
  
end.





