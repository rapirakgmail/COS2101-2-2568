program Hello;
type
  PNode = ^TNode;
  TNode = record
    d: Integer;
    next: PNode;
  end;

procedure AddNode( var Head:PNode;  d:Integer);
var p,q,r:PNode;
begin
  new(q);
  q^.d := d;
  q^.next := nil;
  if( Head = Nil)  then
  begin
    Head := q;
    exit();
  end;
  
  if(Head^.d > d ) then
  begin
    q^.next := head;
    head := q;
    exit();
  end;
  
  r := Head^.next;
  p := Head;
  while(r <> nil) do
  begin
    if( r^.d > d ) then
       break;
    p := r;
    r := r^.next;
  end;
  
  p^.next := q;
  q^.next :=r;
end;

procedure Print( Head:PNode);
begin
  while(Head <> Nil) do
  begin
   writeln( Head^.d);
   Head := Head^.next;
  end;
end;

var
 Head:PNode;
begin
  Head := nil;
  AddNode(Head,40);
  AddNode(Head,20);
  AddNode(Head,10);
  AddNode(Head,30);
  AddNode(Head,50);
  Print(Head);
end.
