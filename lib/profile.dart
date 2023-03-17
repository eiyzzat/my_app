import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final double coverHeight = 280;
  final double profileHeight = 144;

  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight / 2;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContent(),
        ],
      ),
    );
  }

  Widget buildTop() {
    final top = coverHeight - profileHeight / 2;
    final bottom = profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        )
      ],
    );
  }

  Widget buildCoverImage() => Container(
      color: Colors.grey,
      child: Image.asset(
        'lib/images/code.jpeg',
        width: double.infinity,
        height: coverHeight,
        fit: BoxFit.cover,
      ));

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: NetworkImage(
            'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/7baf1e50-626a-459b-8465-6b5acc23ddaf/dfpa6ag-d50b0c3c-c747-4da5-b383-03423e53c2cd.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzdiYWYxZTUwLTYyNmEtNDU5Yi04NDY1LTZiNWFjYzIzZGRhZlwvZGZwYTZhZy1kNTBiMGMzYy1jNzQ3LTRkYTUtYjM4My0wMzQyM2U1M2MyY2QuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.xQL3Mw7a4GIMCW62k-ASBoCYG8CKI-nb9wm1OhU4P94'),
      );

  Widget buildContent() => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Text(
                  'Izzat',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Center(
              child: Text(
                'Intern',
                style: TextStyle(fontSize: 18, height: 1.4),
              ),
            ),
            Text(
              'About',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'Nurhanis Izzaty Binti Hayazit. 24 years old. Studying at UiTM Shah Alam',
              style: TextStyle(fontSize: 18, height: 1.4),
            )
          ],
        ),
      );
}
