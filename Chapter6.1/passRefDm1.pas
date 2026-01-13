program PassByRef;

procedure PassRef(a: integer; var b: real);
begin
    a := a * 2;
    b := b + 2;
    writeln('a = ', a , ', address of a = ' , HexStr(@a));
    writeln('b = ', b:0:1 , ', address of b = ' , HexStr( @b ));
end;

var
    x: integer;
    y: real;

begin
    x := 3;
    y := 18.0;
    writeln('1.x = ', x , ', address of x = ' , HexStr(@x));
    writeln('2.y = ', y:0:1 , ', address of y = ' , HexStr( @y ));
    PassRef(x, y);
    writeln('3.x = ', x , ', address of x = ' , HexStr(@x));
    writeln('4.y = ', y:0:1 , ', address of y = ' , HexStr( @y ));
end.

