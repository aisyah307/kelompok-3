import 'package:homepage/dashboard.dart';
import 'package:homepage/edit_password.dart';
import 'package:homepage/edit_profile.dart';
import 'package:homepage/portofolio_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui'; // Untuk BackdropFilter
import 'package:homepage/porto_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required this.porto});
  final PortoModel porto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFEFEF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 250,
                      margin: EdgeInsets.only(
                          bottom: 60), // Adjusted for better spacing
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(0, 8),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            right: 0,
                            top: 0,
                            bottom: 0,
                            child: Image.network(
                              'Asset/background.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.fromLTRB(0, 63, 0, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(20, 25, 20, 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'E-Portofolio',
                                      style: GoogleFonts.getFont(
                                        'Urbanist',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24,
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
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20), // Adjusted padding
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 70,
                          ), // Adjusted for profile picture space
                          ElevatedButton(
                            onPressed: () {
                              // User Portfolio logic
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PortfolioScreen(porto: porto)),
                              );
                            },
                            child: Text(
                              '“User” Portofolio',
                              style: GoogleFonts.getFont(
                                'Urbanist',
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0xFFEFEFEF),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF4285F4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 15),
                            ),
                          ),
                          SizedBox(height: 20),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Pengaturan',
                              style: GoogleFonts.getFont(
                                'Urbanist',
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Color(0xFFABABAB),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        EditPasswordScreen(porto: porto)),
                              );
                            },
                            icon: Icon(Icons.lock_outline),
                            label: Text(
                              'Ganti Password',
                              style: GoogleFonts.getFont(
                                'Urbanist',
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color(0xFF3A3A3A),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              alignment: Alignment.centerLeft,
                              elevation: 0,
                              shadowColor: Colors.transparent,
                            ),
                          ),
                          SizedBox(height: 15),
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        EditProfileScreen(porto: porto)),
                              );
                            },
                            icon: Icon(Icons.person),
                            label: Text(
                              'Edit Profile',
                              style: GoogleFonts.getFont(
                                'Urbanist',
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color(0xFF3A3A3A),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              alignment: Alignment.centerLeft,
                              elevation: 0,
                              shadowColor: Colors.transparent,
                            ),
                          ),
                          SizedBox(height: 15),
                          ElevatedButton.icon(
                            onPressed: () {
                              // Logout logic
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Dashboard()),
                              );
                            },
                            icon: Image.network(
                              'Asset/keluar.png', // URL of the image for "Keluar"
                              width: 20,
                              height: 20,
                            ),
                            label: Text(
                              'Keluar',
                              style: GoogleFonts.getFont(
                                'Urbanist',
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color(0xFF3A3A3A),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              alignment: Alignment.centerLeft,
                              elevation: 0,
                              shadowColor: Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20), // Adjust for spacing
                  ],
                ),
                Positioned(
                  top: 190, // Adjusted for better fit
                  left: MediaQuery.of(context).size.width / 2 -
                      60, // Centering the profile picture
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ImageOverlayScreen()),
                      );
                    },
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(0, 7),
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.white,
                      ),
                      child: ClipOval(
                          child: Image.asset(
                        'asset/profil.png',
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            SizedBox(width: 40), // memberikan ruang untuk FAB
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed:
                  () {}, // Biarkan tetap mengarah ke halaman profil saat ini
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class ImageOverlayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Center(
            child: CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage('assets/profile.png'),
            ),
          ),
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.blue, size: 30),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
