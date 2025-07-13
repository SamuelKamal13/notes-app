import 'package:flutter/material.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 24),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              textColor: Colors.black,
              title: Text('Note Title', style: TextStyle(fontSize: 26)),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'This is a brief description of the note. It gives an overview of the content.',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
              ),
              trailing: IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {},
                icon: Icon(Icons.delete),
                color: Colors.black,
                iconSize: 24,
              ),
            ),
            Text(
              'May 1, 2023',
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
