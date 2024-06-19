import 'package:homepage/password_updated.dart';
import 'package:flutter/material.dart';

class EditPasswordScreen extends StatelessWidget {
  const EditPasswordScreen({super.key});

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
        actions: [
          IconButton(
            icon: Icon(Icons.check, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PasswordUpdatedScreen()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.blueAccent,
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage(
                          'Asset/profil.png'), // Ganti dengan gambar profil
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.edit, color: Colors.white),
                        onPressed: () {
                          // Logic untuk mengedit gambar profil
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password Baru',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Konfirmasi Password ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:
            Colors.blueAccent, // Change this to your preferred color
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white, // Set the background color
        currentIndex: 4, // Set the active index to the profile tab
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 56, // Adjusted size
              height: 56, // Adjusted size
              child: FloatingActionButton(
                onPressed: () {
                  // Add logic
                },
                child: Icon(Icons.add),
                backgroundColor: Colors.blueAccent,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
