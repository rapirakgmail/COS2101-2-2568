program BankAccount;

type
  Account = record
    id: string[10];
    name: string[100];
    addr: string[100];
    deposit: real;
  end;

var
  cust: array[1..500] of Account;
  n, choice, i: integer;
  id: string[10];
  bfound: boolean;
  deposit: real;

begin
  n := 0;
  repeat
    writeln;
    writeln('1. Open Acc');
    writeln('2. Deposit Acc');
    writeln('3. Withdraw Acc');
    writeln('4. Compute Interest');
    writeln('5. Exit');
    write('Enter choice: ');
    readln(choice);

    case choice of
      1:
        begin
          writeln;
          writeln('Do Open Acc');
          write('id Acc =? ');
          readln(id);
          bfound := False;

          for i := 1 to n do
          begin
            if cust[i].id = id then
            begin
              bfound := True;
              break;
            end; // end if
          end; //end for

          if  bfound = False then
            begin
                n := n + 1;
                cust[n].id := id;
                write('name Acc =? ');
                readln(cust[n].name);
                write('addr Acc =? ');
                readln(cust[n].addr);
                write('deposit Acc =? ');
                readln(cust[n].deposit);
            end
          else
            writeln('id Acc found = ', id);

        end; //case 1

      2:
        begin
          writeln;
          writeln('Do Deposit Acc');
          write('id Acc =? ');
          readln(id);
          
          bfound := False;
          for i := 1 to n do
          begin
            if cust[i].id = id then
            begin
              bfound := True;
              break;
            end; //end if
          end; // end for

          if bfound = False then
            writeln('id Acc not found = ', id)
          else
           begin
              writeln('Before deposit Acc = ', cust[i].deposit:0:2);
              write('New deposit Acc =? ');
              readln(deposit);
              cust[i].deposit := cust[i].deposit + deposit;
              writeln('After deposit Acc = ', cust[i].deposit:0:2);
           end; 
        end; //case 2

      3:
        begin
          writeln('Do Withdraw Acc');
        end;

      4:
        begin
          writeln('Do Interest Acc');
        end;
    end;

  until choice = 5;
end.

