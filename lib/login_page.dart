import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepage/homepage.dart';
import 'register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
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
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Silahkan Login sesuai dengan Username dan Password ya!',
                    style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                      height: 1.2,
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
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 40.8, vertical: 15),
                      hintText: 'Username',
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
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
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
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.visibility_off,
                          color: Colors.grey,
                          size: 24.5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    // Action when Login button is tapped
                  },
                  child: SizedBox(
                    width: screenWidth * 0.8,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Homepage()));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.9),
                        ),
                        backgroundColor: Color(0xFF4285F4),
                      ),
                      child: Text(
                        'Login',
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
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Belum punya akun?',
                        style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Color(0xFF000000),
                        ),
                        children: [
                          TextSpan(
                            text: ' Registrasi disini!',
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
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        'Or Login with',
                        style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color(0xFF6A707C),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(Icons.facebook, color: Colors.blue),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.star, color: Colors.red),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.apple, color: Colors.black),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFE8ECF4)),
                        ),
                        child: Divider(
                          color: Color(0xFFE8ECF4),
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
