import 'dart:math';

int calculate() {
  return 6 * 7;
}

class Employee{
  late int id;
  late String name;
  late DateTime dateOfBirth;
  late String address;
  late String phoneNumber;

  Employee({
    required this.id, 
    required this.name, 
    required this.dateOfBirth, 
    required this.address, 
    required this.phoneNumber});
}

class EmployeeManager {
  List<Employee> employees = [];

  void addEmployee(Employee employee){
    employees.add(employee);
    print("Employee: ${employee.name} added successfully");
  }

  List<Employee> getAllEmployees(){
    return employees;
  }

  void updateEmployee(int id, String name, DateTime dateOfBirth, String address, String phoneNumber){
    for(int i = 0; i < employees.length; i++){
      if(employees[i].id == id){
        employees[i].name = name;
        employees[i].dateOfBirth = dateOfBirth;
        employees[i].address = address;
        employees[i].phoneNumber = phoneNumber;
        break;
      }
      else{
        print("Employee not found");
      }
    }
    print("Employee updated successfully");
  }
}