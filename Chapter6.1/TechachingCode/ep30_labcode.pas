program recordDeclare;
type
    Stock = record
    id: String;
    name: string[50];
    cost: real;
    instock: Integer;
  end;
  aryStock =  array [1..100] of Stock;

var
  myStock:aryStock;
  n:Integer;
  
procedure  AddStock( id:string ; name:string  ;  cost:real ; stock:Integer );
begin
 n := n+1;
 myStock[n].id := id;
 myStock[n].name := name;
 myStock[n].instock := stock;
 myStock[n].cost := cost;
end;

procedure  updateStock( nFound:Integer ; cost:real );
begin
 //myStock[nFound].id := id;
 //myStock[nFound].name := name;
 //myStock[nFound].stock := stock;
 writeln( ' old cost ' , myStock[nFound].cost:0:2);
 myStock[nFound].cost := cost;
 writeln( ' update cost ' , myStock[nFound].cost:0:2);
end;

function FindStockId(id:string):Integer;
var
 i:Integer;
begin
  for i:= 1 to n  do
  begin
    if myStock[i].id = id then
    begin
       Exit( i);
    end;
  end;
  Exit(0);
end;

procedure addItem();
var
  nFound:Integer;
  id:string;
    name: string[50];
    cost: real;
    stock: Integer;
 
begin
    writeln('Add itm');
    //id := readId();
    write('id = ' ); readln( id );
    nFound := FindStockId(id) ;
    if nFound <= 0 then
      begin
        write('name = ' ); readln( name );
        write('cost = ' ); readln( cost );
        write('stock = ' );readln( stock );
        AddStock( id,name,cost,stock );
      end
     else
       begin
          writeln('new cost = ' ); readln( cost );
          updateStock( nFound, cost );
       end;

end;

procedure  sellItem();
var
  nFound:Integer;
  id:string;
  volumn: Integer;

begin
    writeln('sell itm');
    write('id = ' ); readln( id );
    nFound := FindStockId(id) ;
     if nFound <= 0 then
      begin
        write('stock not found' );
      end
     else
       begin
          writeln('get volumn = ' ); readln( volumn );
          writeln( ' old volumn ' , myStock[nFound].instock);
          if( myStock[nFound].instock - volumn >= 0 ) then
          begin
            myStock[nFound].instock := myStock[nFound].instock - volumn;
            writeln( ' update volumn ' , myStock[nFound].instock);
          end
          else
            writeln( ' not  enougth volumn' );
          
       
       end;
      
    
end;


procedure  checkItem();
begin
    writeln('check Item');
end;

function getMenu():Integer;
var 
  ch:Integer;
begin
 writeln('1.Add item');
 writeln('2.Sell item');
 writeln('3.Check item');
 writeln('4.Exit item');
 readln( ch);
 exit( ch );
end;

var
  ch:Integer;

begin
  n:= 0;
 
  ch := getMenu();
  while( ch <> 4) do
  begin
    if ch = 1 then
      begin
      addItem();
      end
    else
    if ch = 2 then
      begin
        sellItem();
      end
    else if ch = 3 then
      begin
        checkItem();
      end;
   ch := getMenu();
  end;
  
end.