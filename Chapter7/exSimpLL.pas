program LinkedListDemo;
type
  PNode = ^TNode;
  TNode = record
    d    : Char;
    x, y : Integer;
    next : PNode;
  end;
var
  a, b, c, d : PNode; //TNode;
  p          : PNode;

begin
  { initialize nodes }
  new(a);
  a^.d := 'a'; a^.x := 10; a^.y := 20;

  new(b);
  b^.d := 'b'; b^.x := 11; b^.y := 21;

  new(c);
  c^.d := 'c'; c^.x := 12; c^.y := 22;

  new(d);
  d^.d := 'd'; d^.x := 13; d^.y := 23;

  { link nodes }
  a^.next := b;
  b^.next := c;
  c^.next := d;
  d^.next := nil;

  p := a;  //p := @a;

  writeln('p',#9,#9, #9, #9,#9, 'd', #9, 'x', #9, 'y', #9, 'next');

  while p <> nil do
  begin
    writeln(
      HexStr( p), #9,
      p^.d, #9,
      p^.x, #9,
      p^.y, #9,
      HexStr( p^.next )
    );
    p := p^.next;
  end;

  dispose(a);
  dispose(b);
  dispose(c);
  dispose(d);  
end.


