program ProductExample;
type
  Product = record
    id: String[10];
    name: String[30];
    cost: Real;
    instock: Integer;
  end;

var
  newProduct: Product; {global vairable}

{==== Function Declaration ====}
function GetNewProduct(): Product;
var
  p: Product; {local vairable}
begin
  WriteLn('New product:');
  Write('id =? ');      ReadLn(p.id);
  Write('name =? ');    ReadLn(p.name);
  Write('cost =? ');    ReadLn(p.cost);
  Write('instock =? '); ReadLn(p.instock);
  exit( p );   { return record }
end;

{==== Main Program ====}
begin
  newProduct := GetNewProduct();   { call function returning record }
  
  WriteLn();
  WriteLn('--- Product Info ---');
  WriteLn('ID: ', newProduct.id);
  WriteLn('Name: ', newProduct.name);
  WriteLn('Cost: ', newProduct.cost:0:2);
  WriteLn('In stock: ', newProduct.instock);
end.

