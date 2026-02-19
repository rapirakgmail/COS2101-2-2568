program LinkedListDemo;

type
  PNode = ^TNode;
  TNode = record
    d    : Char;
    x, y : Integer;
    next : PNode;
  end;


procedure Print(p:PNode);
begin
  writeln( '1.p= ', HexStr(p));

  writeln('p', #9, #9, 'd', #9, 'x', #9, 'y', #9, 'next');
  while p <> nil do
  begin
    writeln(
      PtrUInt(p), #9,
      p^.d, #9,
      p^.x, #9,
      p^.y, #9,
      PtrUInt(p^.next)
    );
    p := p^.next;
  end;

  writeln( '2.p= ', HexStr(p));
  
end;


var
  a, b, c, d : TNode;
  p          : PNode;

begin
  { initialize nodes }
  a.d := 'a'; a.x := 10; a.y := 20;
  b.d := 'b'; b.x := 11; b.y := 21;
  c.d := 'c'; c.x := 12; c.y := 22;
  d.d := 'd'; d.x := 13; d.y := 23;

  { link nodes }
  a.next := @b;
  b.next := @c;
  c.next := @d;
  d.next := nil;

  p := @a;
  
  writeln( '4.p= ', HexStr(p));
  Print(p);
  writeln( '5.p= ', HexStr(p));

end.

