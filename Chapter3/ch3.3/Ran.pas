program RandomExample;

begin
  Randomize;               // Seed the generator

  WriteLn('Random integer 0..99: ', Random(100));
  WriteLn('Random integer 0..high(integer) : ', Random( high(integer)));
end.


