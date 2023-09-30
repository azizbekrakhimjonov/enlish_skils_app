import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../pages/chat.dart';
import '../utils/emoticon_face.dart';
import '../utils/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Iconsax.personalcard), label: 'Setting'),
            BottomNavigationBarItem(icon: Icon(Iconsax.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.message),
              label: 'Chat',
            ),
          ],
          onTap: (index) {
            if (index == 2) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ChatPage()));
            }
          },
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    // greetings row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Hi Calibri
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              'Hi Calibri',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            // const SizedBox(height: 8),
                            // Text(
                            //   '${DateTime.now().day} ${DateTime.now().month},${DateTime.now().year} ${DateTime.now().}',
                            //   style: TextStyle(color: Colors.blue[200]),
                            // )
                          ],
                        ),

                        // Notification
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // search bar
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: const [
                          Icon(Icons.search, color: Colors.white),
                          SizedBox(width: 5),
                          Text(
                            'Search',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    // how to you feel?
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'How to you feel?',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    // 4 different faces
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //bad
                        Column(
                          children: const [
                            EmoticonFace(emoticonFace: '😩'),
                            SizedBox(height: 8),
                            Text(
                              'Bad',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        //fine
                        Column(
                          children: const [
                            EmoticonFace(emoticonFace: '🙂'),
                            SizedBox(height: 8),
                            Text(
                              'Fine',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        //well
                        Column(
                          children: const [
                            EmoticonFace(emoticonFace: '😁'),
                            SizedBox(height: 8),
                            Text(
                              'Well',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        //excellent
                        Column(
                          children: const [
                            EmoticonFace(emoticonFace: '🥳'),
                            SizedBox(height: 8),
                            Text(
                              'Excellent',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(25),
                  color: Colors.grey[300],
                  child: Center(
                    child: Column(
                      children: [
                        // excercise heading
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Exercises',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        // listview of exercises
                        Expanded(
                          child: ListView(
                            children: [
                              Exercise_tile(
                                icon: Icons.favorite,
                                color: Colors.green,
                                exerciseName: 'Speaking skills',
                                NumberOfExercise: 16,
                              ),
                              Exercise_tile(
                                icon: Icons.person,
                                color: Colors.deepOrangeAccent,
                                exerciseName: 'Reading skills',
                                NumberOfExercise: 4,
                              ),
                              Exercise_tile(
                                icon: Icons.star,
                                color: Colors.blue,
                                exerciseName: 'Listening skills',
                                NumberOfExercise: 6,
                              ),
                              Exercise_tile(
                                icon: Icons.watch_off_rounded,
                                color: Colors.teal,
                                exerciseName: 'Writeing skills',
                                NumberOfExercise: 3,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
            child: ListView(children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue[600],
            ),
            child: const Text(
              'Calibri',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
              leading: const Icon(Icons.home),
              onTap: () {},
              title: const Text(
                'Home',
                style: TextStyle(color: Colors.white),
              )),
        ])));
  }
}
