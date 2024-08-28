import 'package:lab5/lab5.dart' as lab5;
import 'package:lab5/lab5.dart';

// void main(List<String> arguments) {
//   print('Hello world: ${lab5.calculate()}!');
// }
void main (){
  lab5.EmployeeManager employeeManager = lab5.EmployeeManager();

  employeeManager.addEmployee(Employee( id: 1, name: "Dung", dateOfBirth: DateTime(1992, 10, 20), address: "123 Main St", phoneNumber: "1234567890"));
  employeeManager.addEmployee(Employee( id: 2, name: "Dung2", dateOfBirth: DateTime(1992, 10, 20), address: "1234 Main St", phoneNumber: "01234567890"));
  print("List of employees: ");
  for(Employee employee in employeeManager.getAllEmployees()){
    print("ID: ${employee.id}, Name: ${employee.name}, Date of birth: ${employee.dateOfBirth}, Address: ${employee.address}, Phone number: ${employee.phoneNumber}");
  }
  employeeManager.updateEmployee(1, "Dung11111", DateTime(1992, 10, 20), "123 Main St", "122222234567890");
  print("List of employees after updating: ");
  for(Employee employee in employeeManager.getAllEmployees()){
    print("ID: ${employee.id}, Name: ${employee.name}, Date of birth: ${employee.dateOfBirth}, Address: ${employee.address}, Phone number: ${employee.phoneNumber}");
  }
  employeeManager.updateEmployee(3, "Dung11111", DateTime(1992, 10, 20), "123 Main St", "122222234567890");
    print("List of employees after updating: ");
  for(Employee employee in employeeManager.getAllEmployees()){
    print("ID: ${employee.id}, Name: ${employee.name}, Date of birth: ${employee.dateOfBirth}, Address: ${employee.address}, Phone number: ${employee.phoneNumber}");
  }
}