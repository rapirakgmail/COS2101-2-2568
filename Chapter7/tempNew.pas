program AllocTmpl;

type
  { ---------- array of Integer ---------- }
  TIntArray = array[1..5] of Integer;
  PIntArray = ^TIntArray;


var
  pIntArr: PIntArray;
begin
  { ===== allocate ===== }
  New(pIntArr); //array of int
  
  if(pIntArr <> nil ) then
  begin
    pIntArr^[3] := 3;
    writeln(pIntArr^[3]);
  
    { ===== free ===== }
    Dispose(pIntArr);
  end;
  
end.





