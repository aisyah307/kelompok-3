import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepage/certificate.dart';
import 'package:homepage/project.dart';
import 'package:homepage/project_model.dart';

class PortoPage extends StatefulWidget {
  const PortoPage({super.key});

  @override
  State<PortoPage> createState() => _PortoPageState();
}

class _PortoPageState extends State<PortoPage> {
  List<ProjectModel> projects = [
    ProjectModel(project: 'Project tidur 1 jam', user: 'user'),
    ProjectModel(project: 'Project kemana?', user: 'user'),
    ProjectModel(project: 'Project apa?', user: 'user'),
    ProjectModel(project: 'Project ngapaian?', user: 'user'),
    ProjectModel(project: 'Project gimana?', user: 'user'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Portofolio'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Sertifikat
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Certificate()),
                );
              },
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('asset/sertifikat5.png'))),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: Text(
                      'Lihat Sertifikat',
                      style: GoogleFonts.urbanist(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            // Projek
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Project(projectmod: projects)),
                );
              },
              child: Text(
                'Lihat Project',
                style: GoogleFonts.urbanist(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.blue // Full width button
                  ),
            ),
            SizedBox(height: 16),
            // Skills
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Skill',
                      style: GoogleFonts.urbanist(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Pencapaian',
                      style: GoogleFonts.urbanist(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Media',
                      style: GoogleFonts.urbanist(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(width: 100),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: Icon(Icons.add),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          iconColor: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: Icon(Icons.add),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          iconColor: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: Icon(Icons.add),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          iconColor: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: Icon(Icons.edit),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          iconColor: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: Icon(Icons.edit),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          iconColor: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: Icon(Icons.edit),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          iconColor: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
