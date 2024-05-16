import 'package:flutter/material.dart';
import 'package:task6_build_the_instagram_ui/instagram_stories.dart';

void main() => runApp(MaterialApp(home: Task6()));

class Task6 extends StatelessWidget {
  const Task6({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Instagram'),
          ),
          leading: Icon(Icons.photo_camera_outlined),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10),
              transform: Matrix4.rotationZ(12),
              child: Icon(Icons.send_outlined),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Stories'),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.arrow_right),
                            Text('Watch all'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.red),
                    height: 110,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        InstagramStories(
                          imagePath: 'assets/images/Faizan_Ahmad.png',
                          name: 'Faizan Ahmad',
                        ),
                        InstagramStories(
                          imagePath: 'assets/images/Aizaz_Khan1.png',
                          name: 'Aizaz Khan',
                        ),
                        InstagramStories(
                          imagePath: 'assets/images/Farooq_Hameed.png',
                          name: 'Farooq Hameed',
                        ),
                        InstagramStories(
                          imagePath: 'assets/images/Zalan_Ahmad.png',
                          name: 'Zalan Ahmad',
                        ),
                        InstagramStories(
                            imagePath: 'assets/images/Shehbaz_Khan.png',
                            name: 'Shehbaz Khan'),
                        InstagramStories(
                          imagePath: 'assets/images/Anas_Hameed.png',
                          name: 'Anas Hameed',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Divider(),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.arrow_right),
                                Text('Watch all'),
                              ],
                            ),
                          ),
                          Icon(Icons.settings),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
