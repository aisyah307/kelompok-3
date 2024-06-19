class StudentModel {
  final String first_name;
  final String last_name;
  final String email;
  final String password;
  final String date_of_birth;

  StudentModel({
    required this.first_name,
    required this.last_name,
    required this.email,
    required this.password,
    required this.date_of_birth,
  });

  factory StudentModel.fromJson(Map<String, dynamic> json) {
    return StudentModel(
      first_name: json['first_name'],
      last_name: json['last_name'],
      email: json['email'],
      password: json['password'],
      date_of_birth: json['date_of_birth'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'first_name': first_name,
      'last_name': last_name,
      'email': email,
      'password': password,
      'date_of_birth': date_of_birth,
    };
  }
}
