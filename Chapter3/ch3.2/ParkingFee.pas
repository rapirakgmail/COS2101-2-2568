program ParkingFeeCalculator;

var
  H_in, M_in: integer;
  H_out, M_out: integer;
  Diff_Min, Diff_H: integer;
  M_total, H_total: integer;
  M_fraction, H_total_1, H_total_2: integer;
  fee: integer;

begin
  WriteLn('Put Time-in :');
  Write('  hour   =? '); ReadLn(H_in);
  Write('  minute =? '); ReadLn(M_in);

  WriteLn('Put Time-out :');
  Write('  hour   =? '); ReadLn(H_out);
  Write('  minute =? '); ReadLn(M_out);

  Diff_H := (H_out - H_in - 1) * 60;

  if (Diff_H < 0) then
    M_total := M_out - M_in
  else
    begin
      Diff_Min := 60 - M_in;
      M_total := Diff_Min + Diff_H + M_out;
    end;

  H_total_1 := M_total div 60;
  H_total_2 := 0;
  M_fraction := M_total mod 60;

  if (M_fraction <> 0) then
  begin
    H_total_2 := 1;
  end;
  
  H_total := H_total_1 + H_total_2;

  WriteLn;
  WriteLn('Time in  : ', H_in, ':', M_in);
  WriteLn('Time out : ', H_out, ':', M_out);
  WriteLn('Total minute     : ', M_total);
  WriteLn('Total hour       : ', H_total_1);
  WriteLn('Fraction minute  : ', M_fraction);
  WriteLn('Park hour        : ', H_total);

  if (H_total <= 3) then
    fee := 0
  else if (H_total <= 4) then
    fee := 50 * (H_total - 3)
  else
    fee := 50 * 1 + 30 * (H_total - 4);
 
  
  WriteLn('Fee : ', fee);
end.

