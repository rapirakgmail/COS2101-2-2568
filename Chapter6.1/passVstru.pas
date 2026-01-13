program EmployeeProgram;

type
  employee = record
    name: string[100];
    age: integer;
    salary: real;
    department: string[50];
  end;

// This procedure takes structure variable as parameter
procedure printEmployeeDetails(emp: employee);
begin
  writeln;
  writeln('*** Employee Details ***');
  writeln('Name : ', emp.name);
  writeln('Age : ', emp.age);
  writeln('Salary : ', emp.salary:0:2);
  writeln('Department : ', emp.department);
end;

var
  manager: employee;

begin
  // Assigning data to members of structure variable
  write('Name: ');
  readln(manager.name);
  write('Age: ');
  readln(manager.age);
  write('Salary: ');
  readln(manager.salary);
  write('Department: ');
  readln(manager.department);
  
  // Passing structure variable to procedure
  printEmployeeDetails(manager);
end.
