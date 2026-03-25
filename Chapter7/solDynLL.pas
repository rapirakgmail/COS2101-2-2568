program LinkedListDemo;

type
  PNode = ^TNode;
  TNode = record
    d    : Char;
    x, y : Integer;
    next : PNode;
  end;

procedure print(p:Pnode );
begin
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

end;

procedure newData(var a:PNode; d:char;x,y:Integer );
begin
  new (a); 
  a^.d := d; a^.x := x; a^.y := y;
  a^.next := nil;
end;

procedure addNode(var a:PNode ; d:char;x,y:Integer );
var
  q,p : PNode;
begin
  
  newData(q,d,x,y);
  if a = Nil then
  begin
    a := q;
    exit();
  end;
  p := a;
  while( p^.next <> Nil) do
  begin
    p := p^.next ;
  end;
  p^.next := q;
  p := q;
  exit();
end;

procedure removeall(var p:PNode);
var
  q:PNode;
begin
  while( p <> Nil) do
  begin
    //case 1
    q := p;
    p := p^.next ;
    dispose(q);
    
    //case 2
   // q := p^.next;
  //  dispose(p);
  //  p := q ;
    
  end;
end;

var
//  a, b, c, d : TNode;
  a,p,q : PNode;

begin
  { initialize nodes }
  
  a := nil;
  {
  newData(q,'a',10,20);
  p := q;
  a := q;
  }
  
  addNode(a,'a',10,20);
  addNode(a,'b',12,21);
  addNode(a,'c',13,31);
  addNode(a,'d',14,41);
  addNode(a,'e',15,51);


  print(a);
  
  removeall(a);
  print(a);
  
  //dispose(a);
  //dispose(b);
  //dispose(c);
  //dispose(d);
   
end.