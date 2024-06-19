import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepage/login_page.dart';
import 'package:homepage/student_model.dart';
import 'package:homepage/studentservice.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();

  final Studentservice studentservice = new Studentservice();

  StudentModel studentModel = StudentModel(
      first_name: '',
      last_name: 'last_name',
      email: 'email',
      password: '',
      date_of_birth: '');

  void _register() async {
    String firstName = _firstNameController.text.trim();
    String lastName = _lastNameController.text.trim();
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    String dateOfBirth = _dateOfBirthController.text.trim();

    if (firstName.isEmpty ||
        lastName.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        dateOfBirth.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Semua bidang harus diisi.'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
      return;
    }

    try {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Registrasi Berhasil'),
            content: Text('Student berhasil ditambahkan.'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );

      _firstNameController.clear();
      _lastNameController.clear();
      _emailController.clear();
      _passwordController.clear();
      _dateOfBirthController.clear();
    } catch (e) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Registrasi Gagal'),
            content: Text('Terjadi kesalahan saat membuat student.'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page'),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFEFEFEF),
          ),
          child: SizedBox(
            width: screenWidth,
            child: Container(
              padding: EdgeInsets.fromLTRB(38, 45.8, 39.2, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Silahkan Isi Data',
                      style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        height: 1,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF000000)),
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFEBEBEB),
                    ),
                    child: TextField(
                      controller: _firstNameController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 40.8, vertical: 15),
                        hintText: 'Nama Depan',
                        hintStyle: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Color(0xFFA3A3A3),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF000000)),
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFEBEBEB),
                    ),
                    child: TextField(
                      controller: _lastNameController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 40.8, vertical: 15),
                        hintText: 'Nama Belakang',
                        hintStyle: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Color(0xFFA3A3A3),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF000000)),
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFEBEBEB),
                    ),
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 40.8, vertical: 15),
                        hintText: 'Email',
                        hintStyle: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Color(0xFFA3A3A3),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF000000)),
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFEBEBEB),
                    ),
                    child: TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 40.8, vertical: 15),
                        hintText: 'Password',
                        hintStyle: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Color(0xFFA3A3A3),
                        ),
                        border: InputBorder.none,
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF000000)),
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFEBEBEB),
                    ),
                    child: TextField(
                      controller: _dateOfBirthController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 40.8, vertical: 15),
                        hintText: 'Tanggal Lahir (DD/MM/YY)',
                        hintStyle: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Color(0xFFA3A3A3),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: _register,
                    child: SizedBox(
                      width: screenWidth * 0.8,
                      child: ElevatedButton(
                        onPressed: _register,
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.9),
                          ),
                          backgroundColor: Color(0xFF4285F4),
                        ),
                        child: Text(
                          'Register',
                          style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.05,
                            height: 1,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Sudah punya akun?',
                          style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: Color(0xFF000000),
                          ),
                          children: [
                            TextSpan(
                              text: ' Login disini!',
                              style: GoogleFonts.urbanist(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Color(0xFF4285F4),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ), //container
      floatingActionButton: FloatingActionButton(onPressed: () async {
        final data = await studentservice.RegisterPage(
          StudentModel(
            first_name: _firstNameController.text.trim(),
            last_name: _lastNameController.text.trim(),
            email: _emailController.text.trim(),
            password: _passwordController.text.trim(),
            date_of_birth: _dateOfBirthController.text.trim(),
          ),
        );
      }),
    ); //sca
  }
}
