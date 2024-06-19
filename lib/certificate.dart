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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    'asset/sertifikat1.png',
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: Image.asset(
                    'asset/sertifikat2.png',
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: Image.asset(
                    'asset/sertifikat3.png',
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: Image.asset(
                    'asset/sertifikat1.png',
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 80), // Add some space at the bottom
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          TambahSertifikat(), // Halaman Tambah Sertifikat
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: Size(double.infinity,
                      50), // Lebar tombol sesuai layar dan tinggi 50
                ),
                child: Text('Tambah Sertifikat',
                    style: GoogleFonts.urbanist(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TambahSertifikat extends StatelessWidget {
  const TambahSertifikat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tambah Sertifikat',
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
      body: Center(
        child: Text(
          'Tambah Sertifikat',
          style:
              GoogleFonts.urbanist(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
