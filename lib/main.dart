import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task6_build_the_instagram_ui/instagram_profile.dart';

import 'package:task6_build_the_instagram_ui/instagram_stories.dart';

void main() => runApp(const MaterialApp(home: Task6()));

class Task6 extends StatelessWidget {
  const Task6({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(240, 240, 240, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(240, 240, 240, 1),
          title: const Center(
            child: Text(
              'Instagram',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          leading: const Icon(Icons.photo_camera_outlined),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              transform: Matrix4.rotationZ(12),
              child: const Icon(Icons.send_outlined),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Stories',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.arrow_right,
                                size: 30,
                              ),
                              Text(
                                'Watch all',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 110,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const InstagramStories(
                          height: 80,
                          padding: 3,
                          imagePath: 'assets/images/Faizan_Ahmad.png',
                          name: 'Faizan Ahmad',
                        ),
                        const InstagramStories(
                          height: 80,
                          padding: 3,
                          imagePath: 'assets/images/Aizaz_Khan1.png',
                          name: 'Aizaz Khan',
                        ),
                        const InstagramStories(
                          height: 80,
                          padding: 3,
                          imagePath: 'assets/images/Farooq_Hameed.png',
                          name: 'Farooq Hameed',
                        ),
                        const InstagramStories(
                          height: 80,
                          padding: 3,
                          imagePath: 'assets/images/Zalan_Ahmad.png',
                          name: 'Zalan Ahmad',
                        ),
                        const InstagramStories(
                            height: 80,
                            padding: 3,
                            imagePath: 'assets/images/Shehbaz_Khan.png',
                            name: 'Shehbaz Khan'),
                        const InstagramStories(
                          height: 80,
                          padding: 3,
                          imagePath: 'assets/images/Anas_Hameed.png',
                          name: 'Anas Hameed',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    child: const SizedBox(
                      height: 30,
                      child: Divider(),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InstagramProfile(
                            imagePath: 'assets/images/Faizan_Ahmad.png',
                            name: 'Faizan Ahmad',
                            height: 50,
                            padding: 2,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Icon(Icons.more_horiz_rounded),
                          ),
                        ],
                      ),
                      Container(
                        constraints: const BoxConstraints.tightFor(width: 350),
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/Faizan_post.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: const Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.heart,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        FontAwesomeIcons.circle,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.send,
                                        size: 30,
                                      ),
                                    ],
                                  ),
                                ),
                                const Icon(
                                  FontAwesomeIcons.bookmark,
                                  size: 30,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              '2M Likes',
                              style: TextStyle(fontSize: 20),
                            ),
                            const Text(
                              '#GhatAkhtar',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
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
