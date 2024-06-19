import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepage/project.dart';
import 'package:homepage/project_model.dart';

class TambahProject extends StatefulWidget {
  const TambahProject({super.key, required this.projectmod});
  final List<ProjectModel> projectmod;

  @override
  State<TambahProject> createState() => _TambahProjectState();
}

class _TambahProjectState extends State<TambahProject> {
  TextEditingController _judulController = TextEditingController();
  TextEditingController _deskripsiController = TextEditingController();
  TextEditingController _linkController = TextEditingController();

  bool isImageUploaded = false;
  bool isSuccess = false;

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

  void _resetState() {
    _judulController.clear();
    _deskripsiController.clear();
    _linkController.clear();
    setState(() {
      isImageUploaded = false;
      isSuccess = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(isSuccess ? 'Project Berhasil Ditambahkan' : 'Tambah Project'),
        actions: [
          if (isSuccess)
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                _resetState();
              },
            ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (!isSuccess) ...[
              TextField(
                controller: _judulController,
                decoration: InputDecoration(
                  labelText: 'Judul',
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _deskripsiController,
                decoration: InputDecoration(
                  labelText: 'Deskripsi',
                ),
                maxLines: 3,
              ),
              SizedBox(height: 16),
              TextField(
                controller: _linkController,
                decoration: InputDecoration(
                  labelText: 'Link',
                ),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: _uploadImage,
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.upload_file, size: 50, color: Colors.grey),
                        SizedBox(height: 10),
                        Text(
                          "Upload Gambar\n(Media Project)",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _showSuccessMessage,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Tambah',
                  style: GoogleFonts.urbanist(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
            if (isSuccess) ...[
              Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 100,
              ),
              SizedBox(height: 100),
              Text(
                'Project berhasil ditambahkan!',
                style: GoogleFonts.urbanist(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Project(
                        projectmod: widget
                            .projectmod, // Menggunakan projectmod yang ada
                      ),
                    ),
                  );
                },
                child: Text('Lihat Project'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
