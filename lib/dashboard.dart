import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';
import 'register_page.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [
                    Color(0xFFEA4335),
                    Color(0xFFFBBC05),
                    Color(0xFF34A853)
                  ],
                ).createShader(bounds),
                child: Text(
                  'E-Portofolio',
                  style: GoogleFonts.urbanist(
                    fontWeight: FontWeight.w700,
                    fontSize: screenWidth * 0.1,
                    height: 1.5,
                    color: Colors
                        .white, // Set text color to white inside ShaderMask
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              width: screenWidth * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor:
                            Color(0xFF4285F4), // Button background color
                      ),
                      child: Text(
                        'Login',
                        style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w500,
                          fontSize: screenWidth * 0.05,
                          height: 1,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30), 
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        side: BorderSide(color: Color(0xFF000000)),
                      ),
                      child: Text(
                        'Register',
                        style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w500,
                          fontSize: screenWidth * 0.05,
                          height: 1,
                          color: Color(0xFF1B1B1B),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



