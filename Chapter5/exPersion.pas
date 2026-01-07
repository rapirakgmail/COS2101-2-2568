program examplePersion;

type
  PERSON = record
    age: Integer;
    tell: Integer;
    weight: Real;
    name: string[10];
  end;

  DEPARTMENT = record
    nID: Integer;
    DepNm: string[80];
    student : array[1..30] of PERSON;
  end;

var
  dang, pin, tip: PERSON;                { individual variables }
  family: array[1..5] of PERSON;       { array of PERSON }

  science: DEPARTMENT;               { individual variable }
  ramFaculty: array[1..6] of DEPARTMENT; { array of DEPARTMENT }

begin
    dang.age := 31;
    dang.tell := 170;
    dang.weight := 45.6;
    dang.name := 'dang';

    tip := dang;            //copy
    tip.name  := 'tip';
    
    family[1] := dang;      //copy     
    family[2] := tip;       //copy

    science.niD := 1;
    science.DepNm := 'science';
    science.student[1] := dang;
    science.student[2] := tip;
    
    ramFaculty[1] := science;   //copy 
    
    writeln( 'sizeof(dang)=' , sizeof(dang),
            ' ,dang.name=',dang.name ,',dang.tell=',dang.tell );
            
    writeln( 'sizeof(family)=' , sizeof(family),
            ' ,family[1].name=',family[1].name ,
            ',family[1].tell=',family[1].tell );
    
    writeln( 'sizeof(science)=' , sizeof(science), 
            ' ,science.student[1].name=',science.student[1].name ,
            ',science.student[1].tell=',science.student[1].tell );
    
    writeln( 'sizeof(ramFaculty)=' , sizeof(ramFaculty), 
            ' ,ramFaculty[1].student[1].name=',ramFaculty[1].student[1].name ,
            ',ramFaculty[1].student[1].tell=',ramFaculty[1].student[1].tell );    
end.
