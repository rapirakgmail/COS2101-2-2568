program SeatReservation;

uses
  SysUtils;

type
  Seat = record
    siteno: string[5];
    free: boolean;  // true = free, false = reserved
    custname: string[50];
    tel: string[10];
  end;

var
  site: array[1..8, 1..4] of Seat;
  selectMenu: char;
  row, col: integer;
  iRfound, iCfound: integer;
  selectSite: string[10];

begin
  { Initialize seat data }
  site[1,1].siteno := '1A'; site[1,2].siteno := '1B'; site[1,3].siteno := '1C'; site[1,4].siteno := '1D';
  site[2,1].siteno := '2A'; site[2,2].siteno := '2B'; site[2,3].siteno := '2C'; site[2,4].siteno := '2D';
  site[3,1].siteno := '3A'; site[3,2].siteno := '3B'; site[3,3].siteno := '3C'; site[3,4].siteno := '3D';
  site[4,1].siteno := '4A'; site[4,2].siteno := '4B'; site[4,3].siteno := '4C'; site[4,4].siteno := '4D';
  site[5,1].siteno := '5A'; site[5,2].siteno := '5B'; site[5,3].siteno := '5C'; site[5,4].siteno := '5D';
  site[6,1].siteno := '6A'; site[6,2].siteno := '6B'; site[6,3].siteno := '6C'; site[6,4].siteno := '6D';
  site[7,1].siteno := '7A'; site[7,2].siteno := '7B'; site[7,3].siteno := '7C'; site[7,4].siteno := '7D';
  site[8,1].siteno := '8A'; site[8,2].siteno := '8B'; site[8,3].siteno := '8C'; site[8,4].siteno := '8D';

  for row := 1 to 8 do
    for col := 1 to 4 do
    begin
      site[row, col].free := True;
      site[row, col].custname := '';
      site[row, col].tel := '';
    end;

  repeat
    writeln;
    writeln('Current Seat Map:');
    for row := 1 to 8 do
    begin
      for col := 1 to 4 do
      begin
        if site[row, col].free then
          write('|', site[row, col].siteno:3)
        else
          write('|', ' **');
      end;
      writeln;
    end;

    writeln;
    writeln('MENU');
    writeln('<R> Reserve seat');
    writeln('<S> Summary seat');
    writeln('<Q> Quit');
    write('Select R/S/Q ? ');
    readln(selectMenu);

    case selectMenu of
      'R', 'r':
        begin
          iRfound := -1;
          iCfound := -1;
          write('Select seat (Upper character): ');
          readln(selectSite);

          for row := 1 to 8 do
          begin
            for col := 1 to 4 do
            begin
              if site[row, col].siteno = selectSite then
              begin
                iRfound := row;
                iCfound := col;
                break;
              end;
            end;
            if iRfound <> -1 then break;
          end;

          if (iRfound <> -1) and (site[iRfound, iCfound].free) then
          begin
            site[iRfound, iCfound].free := False;
            write('Name =? '); readln(site[iRfound, iCfound].custname);
            write('Telephone =? '); readln(site[iRfound, iCfound].tel);
          end
          else
            writeln('Seat not found or already reserved.');
        end;

      'S', 's':
        begin
          writeln;
          writeln('Summary of Reserved Seats:');
          for row := 1 to 8 do
            for col := 1 to 4 do
              if not site[row, col].free then
                writeln('Seat ', site[row, col].siteno, #9,
                        'Name: ', site[row, col].custname, #9,
                        'Tel: ', site[row, col].tel);
        end;
    end;

  until (selectMenu = 'Q') or (selectMenu = 'q');
end.

