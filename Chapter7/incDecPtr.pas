program incDecPtr;

uses
  SysUtils;

var
  str: string;
  p: ^Char;
begin
  str := 'Hello';  // You must initialize the string before accessing characters

  Writeln('sizeof(str) = ', SizeOf(str), ',str=',str);
  Writeln('sizeof(str[1]) = ', SizeOf(str[1]), ' , @str[1] = ', PtrUInt(@str[1]));
  Writeln('sizeof(str[2]) = ', SizeOf(str[2]), ' , @str[2] = ', PtrUInt(@str[2]));

  p := @str[1];  // Use := for assignment, and point to first character of the string
  Writeln('p = ', PtrUInt(p), ' , ^p = ', p^, ' , @p = ', PtrUInt(@p));
  Inc(p);
  Writeln('p = ', PtrUInt(p), ' , ^p = ', p^, ' , @p = ', PtrUInt(@p));
  Dec(p);
  Writeln('p = ', PtrUInt(p), ' , ^p = ', p^, ' , @p = ', PtrUInt(@p));
  
end.
