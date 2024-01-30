import 'package:flutter/material.dart';

import '../widgets/profile_picture.dart';
import '../widgets/info_items.dart';
import '../widgets/tab_items.dart';
import '../widgets/story_items.dart';

void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          children: [
            // nickname
            Text(
              "hoohbim_",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          // Tombol add dan menu
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        // Following
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItems("Post", "20"),
                      InfoItems("Followers", "33"),
                      InfoItems("Followings", "2.069"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            // Name Instagram
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Abimanyu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            // Deskripsi
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                text:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: "#tembakgotri",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                    ),
                  ),
                  TextSpan(
                    text: "#tembakgotri",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                    ),
                  ),
                  TextSpan(
                    text: "#tembakgotri",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "github.com",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: TextStyle(color: Colors.black),
              ),
              // style: OutlinedButton.styleFrom(
              //   backgroundColor: Colors.black,
              // ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            // Story
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItems("Story 1"),
                  StoryItems("Story 2"),
                  StoryItems("Story 3"),
                  StoryItems("Story 4"),
                  StoryItems("Story 5"),
                  StoryItems("Add"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            // postingan
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabItems(Icons.grid_on_outlined, true),
              TabItems(Icons.person_pin_outlined, false),
            ],
          ),
          GridView.builder(
            shrinkWrap:
                true, //ini buat agar grid view nya biar ngga bisa di scroll karena di
            // dalam listvie ngga bisa di pasang gridvie/yang bisa discroll
            physics: NeverScrollableScrollPhysics(),
            itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/id/${index + 510}/536/354",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // Bottom Nav
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: 4,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie,
            ),
            label: "Movie",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
