import 'dart:io';

import 'package:lab4/lab4.dart' as lab4;

// void main(List<String> arguments) {
//   print('Hello world: ${lab4.calculate()}!');
// }
void main() {
  // Nhập thông tin người dùng
  stdout.write('Nhập tên: ');
  String? name = stdin.readLineSync();

  stdout.write('Nhập ngày tháng năm sinh (dd-MM-yyyy): ');
  String? inputDate = stdin.readLineSync();
  DateTime? birthDate;

  // Kiểm tra và parse ngày sinh theo định dạng dd-MM-yyyy
  try {
    List<String> dateParts = inputDate!.split('-');
    int day = int.parse(dateParts[0]);
    int month = int.parse(dateParts[1]);
    int year = int.parse(dateParts[2]);
    birthDate = DateTime(year, month, day);
  } catch (e) {
    print('Định dạng ngày tháng năm không hợp lệ.');
    return;
  }

  // Tính tuổi hiện tại
  DateTime today = DateTime.now();
  int age = today.year - birthDate.year;

  // Kiểm tra nếu hôm nay là sinh nhật
  bool isBirthday = (today.month == birthDate.month && today.day == birthDate.day);

  int retirementAge = 65;
  // Tính số năm còn lại để về hưu
  int yearsToRetire = retirementAge - age;

  // Hiển thị kết quả
  print('\nXin chào $name!');
  print('Bạn hiện tại $age tuổi.');

  if (isBirthday) {
    print('Chúc mừng sinh nhật!');
  }

  if (yearsToRetire > 0) {
    print('Bạn sẽ về hưu sau $yearsToRetire năm nữa.');
  } else {
    print('Bạn đã được nghỉ hưu!');
  }
}