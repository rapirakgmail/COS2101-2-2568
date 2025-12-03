program NestedForBreakStructured;
var
  i, j: Integer;

begin
  for i := 1 to 3 do
  begin

    for j := 1 to 4 do
    begin
      if j >= 3 then
      begin
        continue;  // ❌ not standard Pascal, so we’ll handle manually
      end;
      WriteLn('inner -> i = ', i, ', j = ', j);
    end;
    WriteLn('outer -> i = ', i, ', j = ', j);
  end;
end.







