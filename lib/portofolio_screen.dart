import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepage/porto_page.dart';
import 'package:homepage/porto_model.dart';
import 'package:homepage/tambah_porto.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key, required this.porto});
  final PortoModel porto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFEFEF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Halaman Portofolio',
          style: GoogleFonts.getFont(
            'Urbanist',
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Logic untuk membuka portofolio
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 78, 24, 21),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PortoPage(),
                              ),
                            );
                          },
                          child: Text(
                            'Nama Portofolio',
                            style: GoogleFonts.getFont(
                              'Urbanist',
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.blueAccent,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TambahPorto(porto: porto),
                          ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add, size: 40, color: Colors.black),
                            SizedBox(height: 10),
                            Text(
                              'Tambah Portofolio',
                              style: GoogleFonts.getFont(
                                'Urbanist',
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.black,
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
          ],
        ),
      ),
    );
  }
}
