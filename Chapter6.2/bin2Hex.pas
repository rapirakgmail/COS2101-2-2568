
program BinToDecConverter;

var
  bin: string;
  dec, p, d, i: integer;
begin

  write('Enter binary number: ');
  //readln(bin);
  bin := '1010101';
  dec := 0;
  p := 1;

  for i := length(bin) downto 1 do
  begin
    case bin[i] of
      '0': d := 0;
      '1': d := 1;
    end;
    dec := dec + p * d;
    p := p * 2;
  end;

  writeln('Decimal = ', dec);
  readln;
end.

