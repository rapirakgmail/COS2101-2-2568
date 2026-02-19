program SizeOfExample;

uses
  SysUtils;

type
  employee = record
    name: array[0..15] of Char;
    id: Integer;
  end;

var
  i: Integer;
  pi: ^Integer;

  f: real;
  pf: ^real;

  c: Char;
  pc: ^Char;

  d: Double;
  pd: ^Double;

  e: employee;
  pe: ^employee;

begin
  Writeln('sizeof(i) = ', SizeOf(i), ' sizeof(pi) = ', SizeOf(pi));
  Writeln('sizeof(f) = ', SizeOf(f), ' sizeof(pf) = ', SizeOf(pf));
  Writeln('sizeof(c) = ', SizeOf(c), ' sizeof(pc) = ', SizeOf(pc));
  Writeln('sizeof(d) = ', SizeOf(d), ' sizeof(pd) = ', SizeOf(pd));
  Writeln('sizeof(e) = ', SizeOf(e), ' sizeof(pe) = ', SizeOf(pe));
end.
