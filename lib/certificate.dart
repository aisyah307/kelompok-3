import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Certificate extends StatelessWidget {
  const Certificate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Halaman Sertifikat',
          style:
              GoogleFonts.urbanist(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'asset/sertifikat1.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            SizedBox(height: 16), // Add some spacing between images
            Image.asset(
              'asset/sertifikat2.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            SizedBox(height: 16), // Add some spacing between images
            Image.asset(
              'asset/sertifikat3.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            SizedBox(height: 16), // Add some spacing between images
            Image.asset(
              'asset/sertifikat1.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}