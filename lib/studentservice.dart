import 'package:dio/dio.dart';
import 'package:homepage/student_model.dart';
//import 'package:homepage/register_page.dart';

class Studentservice {
  final Dio _dio = Dio();
  Studentservice() {
    _dio.options.baseUrl = 'localhost:3000/api';
  }

  Future<StudentModel> RegisterPage(StudentModel student) async {
    try {
      final response = await _dio.post('/students', data: student.toJson());
      print('Student created: ${response.data}');
      return StudentModel.fromJson(response.data);
    } catch (e) {
      print('$e');
      return StudentModel(
        first_name: '',
        last_name: '',
        email: '',
        password: '',
        date_of_birth: '',
      );
    }
  }
}
