program ProductManagement;

type
  Product = record
    id: string[10];
    name: string[30];
    cost: real;
    instock: integer;
  end;

var
  items: array[1..100] of Product;
  n, selectOption, i, buyVolume: integer;
  key: string[10];
begin
  n := 0;
  selectOption := -1;

  while True do
  begin
    writeln;
    writeln('Menu');
    writeln('1. Add item to Cart');
    writeln('2. Sell product');
    writeln('3. Check stock');
    writeln('4. End program');
    write('Please select 1 / 2 / 3 / 4 =? ');
    readln(selectOption);

    if selectOption = 4 then
      break;

    case selectOption of
      1: 
         begin
              writeln('New product:');
              write('id =? '); readln(items[n + 1].id);
              write('name =? '); readln(items[n + 1].name);
              write('cost =? '); readln(items[n + 1].cost);
              write('instock =? '); readln(items[n + 1].instock);
              n := n + 1;
         end;
         
      2: 
         begin
              write('Input your product id: ');
              readln(key);
              write('Input your buy volume: ');
              readln(buyVolume);
        
              for i := 1 to n do
              begin
                if items[i].id = key then
                begin
                  writeln('name= ', items[i].name);
                  writeln('cost= ', items[i].cost:0:2);
                  writeln('instock= ', items[i].instock);
                  writeln('Pay = ', items[i].cost * buyVolume:0:2);
                  items[i].instock := items[i].instock - buyVolume;
                  break;
                end;
              end;
        end;
        
      3: 
        begin
            writeln('id',  Chr(9), 'name',  Chr(9), 'cost',  Chr(9), 'instock');
            for i := 1 to n do
            begin
                writeln(items[i].id,  Chr(9), items[i].name,  Chr(9),
                        items[i].cost:0:2,  Chr(9), items[i].instock);
            end;         
        end;
        
    end; //case
    
  end;  //while
  
end. //program

