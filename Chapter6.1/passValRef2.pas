program PassByValueAndReference2;

procedure pass_val(l: Integer; var a: Double);
begin
    writeln(chr(9)+'pass_val before -> l = ', l);
    writeln(chr(9)+'pass_val before -> a = ', a:0:1);

    l := l * 2;
    a := a + 2;

    writeln(chr(9)+'pass_val -> l = ', l);
    writeln(chr(9)+'pass_val -> a = ', a:0:1);
end;

var
    x, i: Integer;
    y, j: Double;

begin
    y := 18.0;  x := 3;
    i := 100;   j := 91.1;

    writeln('main before -> x = ', x);
    writeln('main before -> y = ', y:0:1);

    pass_val(x, y);

    writeln('main -> x = ', x);
    writeln('main -> y = ', y:0:1);

    writeln('main before -> i = ', i);
    writeln('main before -> j = ', j:0:1);

    pass_val(i, j);

    writeln('main -> i = ', i);
    writeln('main -> j = ', j:0:1);
end.
