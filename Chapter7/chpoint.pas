program CharPointerExample;

uses
  SysUtils;

var
  msg: string;
  ptr: ^Char;
begin
  msg := 'Hello';  // 5 chars

  Writeln(' msg: ', msg);
  
  ptr := @msg[1];    // ptr = msg;

  ptr^ := 'M';       // *ptr = 'M';
  Inc(ptr);          // ptr++;

  ptr^ := 'a';       // *ptr = 'a';

  // Print the modified array as a string
  Writeln('Modified msg: ', msg);
end.
