import 'package:flutter/material.dart';
import 'package:homepage/comment_model.dart';
import 'package:homepage/porto_model.dart';

class CommentPage extends StatefulWidget {
  CommentPage({super.key, required this.porto});

  final PortoModel porto;

  @override
  State<CommentPage> createState() => _CommentState();
}

class _CommentState extends State<CommentPage> {
  List<CommentModel> comment = [];
  bool isAddingComment = false;
  final TextEditingController _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(''),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Beranda'),
              Tab(text: 'Following'),
            ],
          ),
        ),
        body: Column(
          children: [
            // Row for displaying avatar, user, and container
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  // Avatar
                  CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                  SizedBox(width: 10),
                  Text(widget.porto.user),
                ],
              ),
            ),
            // Container
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 235, 191, 72),
                ),
              ),
            ),
            // Add/close button
            TextButton(
              onPressed: () {
                setState(() {
                  isAddingComment = !isAddingComment;
                });
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(8),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      isAddingComment = true;
                    });
                  },
                  child: Text(
                    "Tambahkan Komentar",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            // Comment input section
            if (isAddingComment)
              Row(
                children: [
                  // Text field for adding a comment
                  Expanded(
                    flex: 8,
                    child: TextField(
                      controller: _commentController,
                      decoration: InputDecoration(
                        hintText: 'Tambah komentar...',
                      ),
                    ),
                  ),
                  // Send button
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      setState(() {
                        comment.add(CommentModel(_commentController.text));
                        _commentController.clear();
                        isAddingComment = false;
                      });
                    },
                  ),
                ],
              ),
            // List of comments
            Expanded(
              child: ListView.builder(
                itemCount: comment.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.red,
                    ),
                    title: Text(comment[index].text),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
