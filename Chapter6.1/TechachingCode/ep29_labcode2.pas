program recordDeclare;
type
    Account = record
    id: Integer;
    name: string[50];
    addr: string[100];
    deposit: real;
  end;
  myIntArray =  array [1..500] of Account;

var
  accList: myIntArray;
   n:Integer;


function FindAccount(id:Integer): Integer;
var 
  x:Integer;
//  bfound:boolean;
begin
     // bfound := false;
      for x:= 1 to n do
      begin
        if( id = accList[ x ].id ) then
        begin
          Exit( x );
          //bfound := true;
          //break;
        end;
      end;
      Exit( 0);
end;

function getChoice():Integer;
var 
  choice:Integer;
begin
  writeln('1.new Acc');
  writeln('2.deposit');
  writeln('3.withdraw');
  writeln('4.Comput Interest');
  writeln('5.Exit');
  readln( choice);
  exit(choice);
end;

procedure depositAcc( );
var
    id: Integer;
    x:Integer;
    deposit: real;
begin
  writeln('2.deposit');
  write('id :'); readln(id);
  x := FindAccount(id);
  if( x >= 1) then
      begin
         write('deposit: '); readln(deposit);
         writeln('before update : ',accList[ x ].deposit:0:2); 
         accList[ x ].deposit := accList[ x ].deposit+ deposit;
         writeln('update deposit: ',accList[ x ].deposit:0:2); 
      end
  else
    writeln( 'account not found');

end;

procedure withdrawAcc();
var
    id: Integer;
    x:Integer;
 withdraw : real;
begin
          writeln('3.withdraw');
          write('id :'); readln(id);
          x := FindAccount(id);
          
          if( x  >= 1) then
              begin
                 write('withdraw: '); readln(withdraw);
                 if accList[ x ].deposit - withdraw >= 100 then
                 begin
                     writeln('before update : ',accList[ x ].deposit:0:2); 
                     accList[ x ].deposit := accList[ x ].deposit - withdraw;
                     writeln('update withdraw: ',accList[ x ].deposit:0:2);
                end
                else
                     writeln('money not enough: ',accList[ x ].deposit:0:2);
              end
          else
            writeln( 'account not found');

end;

procedure newAcc();
var
    id: Integer;
    name: string;
    addr: string;
    deposit: real;
    x : Integer;
begin
          write('1.new acc');
          write('id :'); readln(id);
          x := FindAccount(id);
          if( x = 0) then
            begin
              write('name: '); readln(name);
              write('addr: '); readln(addr);
              write('deposit: '); readln(deposit);
              n := n+1;
              accList[ n ].id := id;
              accList[ n ].name := name;
              accList[ n ].addr := addr;
              accList[ n ].deposit := deposit;
            end
          else
            writeln( 'account duplicate');
end;

procedure computRate();
var
    incomeRate,rate: real;
    x : Integer;
begin
          writeln('4.Comput Interest');
          write('get rate: '); readln( rate );
          for x:= 1 to n do
          begin
               write( 'id ='); writeln( accList[ x ].id ); 
               write( 'before - deposit ='); writeln( accList[ x ].deposit:0:2 ); 
               //ดอกเบี้ยที่ได้ =อัตราดอกเบี้ยที่ได้*เงินฝากเดิม       
               incomeRate := rate* accList[ x ].deposit;
               //เงินฝากใหม่ = เงินฝากเดิม+ดอกเบี้ยที่ได้          
               accList[ x ].deposit := accList[ x ].deposit +  incomeRate;
               write( 'after - deposit ='); writeln( accList[ x ].deposit:0:2 ); 
          end;
end;

var
  choice:Integer;

begin
      n := 0;
    repeat
          
      choice := getChoice();
      
      case choice of
      1:
        begin
         newAcc( );
        end;
      2:
        begin
          depositAcc();
        end;
      3:
        begin
          withdrawAcc();
        end;
      4:
        begin
           computRate();
        end;

      5:
        begin
          writeln('5.exit');
        end;
      else
        writeln('invalid choice');
      end;
      
    until choice = 5;
    
    writeln( 'num accout ',n );
    
end.