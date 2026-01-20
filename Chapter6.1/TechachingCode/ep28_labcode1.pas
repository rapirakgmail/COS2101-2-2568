program recordDeclare;
type
    Account = record
    id: Integer;
    name: string[50];
    addr: string[100];
    deposit: real;
  end;
var
  accList: array [1..500] of Account;
  choice:Integer;
    id: Integer;
    name: string;
    addr: string;
    withdraw,deposit: real;
    rate,incomeRate:real;
    x,n:Integer;
    bfound:boolean;
begin
      n := 0;
    repeat
          
      writeln('1.new Acc');
      writeln('2.deposit');
      writeln('3.withdraw');
      writeln('4.Comput Interest');
      writeln('5.Exit');
      readln( choice);
      
      case choice of
      1:
        begin
          write('1.new acc');
          write('id :'); readln(id);
          bfound := false;
          for x:= 1 to n do
          begin
            if( id = accList[ x ].id ) then
            begin
              writeln( 'account duplicate');
              bfound := true;
              break;
            end;
          end;
          if( bfound = false) then
          begin
              write('name: '); readln(name);
              write('addr: '); readln(addr);
              write('deposit: '); readln(deposit);
              
              n := n+1;
              accList[ n ].id := id;
              accList[ n ].name := name;
              accList[ n ].addr := addr;
              accList[ n ].deposit := deposit;
          end;
        end;
      2:
        begin
          writeln('2.deposit');
          write('id :'); readln(id);
          bfound := false;
          for x:= 1 to n do
          begin
            if( id = accList[ x ].id ) then
            begin
              bfound := true;
              break;
            end;
          end;
          if( bfound = true) then
              begin
                 write('deposit: '); readln(deposit);
                 writeln('before update : ',accList[ x ].deposit:0:2); 
                 accList[ x ].deposit := accList[ x ].deposit+ deposit;
                 writeln('update deposit: ',accList[ x ].deposit:0:2); 
              end
          else
            writeln( 'account not found');
        end;
      3:
        begin
          writeln('3.withdraw');
          
          bfound := false;
          for x:= 1 to n do
          begin
            if( id = accList[ x ].id ) then
            begin
              bfound := true;
              break;
            end;
          end;
          if( bfound = true) then
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
      4:
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