import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/MessageScreen/message_screen.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Map> chats = [
    {
      "name": "Muhibbul Hasan",
      "image":
          "https://media.licdn.com/dms/image/D5635AQGZYXRj1APT6Q/profile-framedphoto-shrink_200_200/0/1704028298963?e=1720605600&v=beta&t=EZKake3JBOyOczFqzdLa-nlItXEUSrcHdeOgRYUqMSE",
      "message": "Hi there, I am Joy Roy. What is your name",
      "count": 10,
      "time": "12:00 PM"
    },
    {
      "name": "Akash",
      "image":
          "https://media.licdn.com/dms/image/D5635AQGZYXRj1APT6Q/profile-framedphoto-shrink_200_200/0/1704028298963?e=1720605600&v=beta&t=EZKake3JBOyOczFqzdLa-nlItXEUSrcHdeOgRYUqMSE",
      "message": "Hi there, I am Opu. What is your name",
      "count": 10,
      "time": "10:00 AM"
    },
    {
      "name": "Joy",
      "image":
          "https://media.licdn.com/dms/image/D5635AQEPExXAhm_e5w/profile-framedphoto-shrink_200_200/0/1670494519329?e=1720670400&v=beta&t=fZ-LFAJiqAlGX_fp2qnX3yk2v7blBzmtddGScGGdI-o",
      "message": "Hi there, I am Muhibbul Hasan. What is your name",
      "count": 10,
      "time": "02:00 PM"
    },
    {
      "name": "Apu Vai",
      "image":
          "https://media.licdn.com/dms/image/D5635AQEPExXAhm_e5w/profile-framedphoto-shrink_200_200/0/1670494519329?e=1720670400&v=beta&t=fZ-LFAJiqAlGX_fp2qnX3yk2v7blBzmtddGScGGdI-o",
      "message": "Hi there, I am Akash. What is your name",
      "count": 4,
      "time": "10:00 PM"
    },
    {
      "name": "Rakib",
      "image":
          "https://media.licdn.com/dms/image/D5635AQEPExXAhm_e5w/profile-framedphoto-shrink_200_200/0/1670494519329?e=1720670400&v=beta&t=fZ-LFAJiqAlGX_fp2qnX3yk2v7blBzmtddGScGGdI-o",
      "message": "Hi there, I am Shuvo. What is your name",
      "count": 20,
      "time": "07:00 AM"
    },
    {
      "name": "Shuvo",
      "image":
          "https://media.licdn.com/dms/image/D5635AQEPExXAhm_e5w/profile-framedphoto-shrink_200_200/0/1670494519329?e=1720670400&v=beta&t=fZ-LFAJiqAlGX_fp2qnX3yk2v7blBzmtddGScGGdI-o",
      "message": "Hi there, I am Rakib. What is your name",
      "count": 2,
      "time": "12:00 PM"
    },
    {
      "name": "Rana Vai",
      "image":
          "https://media.licdn.com/dms/image/D5635AQEPExXAhm_e5w/profile-framedphoto-shrink_200_200/0/1670494519329?e=1720670400&v=beta&t=fZ-LFAJiqAlGX_fp2qnX3yk2v7blBzmtddGScGGdI-o",
      "message": "Hi there, I am Apu. What is your name",
      "count": 0,
      "time": "12:00 PM"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF075E55),
          title: Text(
            'WhatsApp',
            style: TextStyle(
                color: Colors.white.withOpacity(.7),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white.withOpacity(.7),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white.withOpacity(.7),
                )),
          ],
          bottom: TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.white70,
              tabs: [
                Tab(
                  icon: Icon(Icons.camera_alt_rounded),
                ),
                Tab(
                  text: 'CHATS',
                ),
                Tab(
                  text: 'STATUS',
                ),
                Tab(
                  text: 'CALLS',
                ),
              ]),
        ),
        body: TabBarView(children: [
          Text('1st'),
          ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MessageScreen(
                          name: chats[index]['name'],
                          image: chats[index]['image'],
                          time: chats[index]['time'],
                        ),
                      ));
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(chats[index]['image']),
                ),
                title: Text(chats[index]['name']),
                subtitle: Text(
                  chats[index]['message'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                  ),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      chats[index]['time'],
                      style: TextStyle(
                          color: chats[index]['count'] != 0
                              ? Color(0xFF10CE62)
                              : Colors.black),
                    ),
                    Visibility(
                      visible: (chats[index]['count'] != 0),
                      child: Container(
                        padding: EdgeInsets.all(6.0),
                        // height: 15,
                        // width: 15,
                        decoration: BoxDecoration(
                          color: Color(0xFF10CE62),
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          (chats[index]['count']).toString(),
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
          Text('3rd'),
          Text('5th'),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          backgroundColor: Color(0xFF075E55),
        ),
      ),
    );
  }
}
