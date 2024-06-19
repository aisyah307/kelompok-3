import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:homepage/following.dart';
import 'package:homepage/porto_model.dart';

class TambahPorto extends StatefulWidget {
  const TambahPorto({Key? key, required this.porto}) : super(key: key);
  final PortoModel porto;

  @override
  _TambahPortoState createState() => _TambahPortoState();
}

class _TambahPortoState extends State<TambahPorto> {
  bool isImageUploaded = false;
  bool isSuccess = false;
  TextEditingController _nameController = TextEditingController();

  void _uploadImage() {
    setState(() {
      isImageUploaded = true;
    });
  }

  void _showSuccessMessage() {
    setState(() {
      isSuccess = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isSuccess) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.blue,
                size: 100,
              ),
              SizedBox(height: 20),
              Text(
                "Portofolio baru berhasil ditambahkan!",
                style: GoogleFonts.urbanist(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  // Reset nilai isSuccess menjadi false
                  setState(() {
                    isSuccess = false;
                  });
                  // Kembali ke halaman sebelumnya
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: Text("Back"),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Row(
            children: [
              Column(
                children: [
                  Text(
                    widget.porto.user,
                    style: GoogleFonts.urbanist(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.porto.user,
                    style: GoogleFonts.urbanist(
                        fontSize: 13, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 18,
              )
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            isImageUploaded
                ? AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.asset(
                      'asset/tambahporto.jpg',
                      fit: BoxFit.cover,
                    ),
                  )
                : GestureDetector(
                    onTap: _uploadImage,
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.upload_file, size: 50, color: Colors.grey),
                          SizedBox(height: 10),
                          Text("Gambar Portofolio"),
                        ],
                      ),
                    ),
                  ),
            SizedBox(height: 20),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: "Nama Portofolio",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (isImageUploaded) {
                  _showSuccessMessage();
                } else {
                  _uploadImage();
                }
              },
              child: Text("Tambah"),
            ),
          ],
        ),
      ),
    );
  }
}
