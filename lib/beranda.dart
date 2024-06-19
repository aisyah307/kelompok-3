import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepage/comment_page.dart';
import 'package:homepage/porto_model.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key, required this.porto});

  final List<PortoModel> porto;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: porto.length,
      itemBuilder: (context, index) {
        final item = porto[index];

        return GestureDetector(
            onTap: () {
              //navigasi ke komen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CommentPage(porto: porto[index]),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 214, 214, 214)),
                  borderRadius: BorderRadius.circular(10)),
              clipBehavior: Clip.hardEdge,
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 235, 191, 72),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text(
                          item.name,
                          style: GoogleFonts.urbanist(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.red,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              item.user,
                              style: GoogleFonts.urbanist(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ));
      },
    );
  }
}
