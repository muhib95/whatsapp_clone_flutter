import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  final String name;
  final String image;
  final String time;

  const MessageScreen(
      {super.key, required this.name, required this.image, required this.time});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  List<Map> chatDetails = [
    {'message': 'Hello', 'is_me': true, 'time': '07:00PM'},
    {'message': 'Hello', 'is_me': false, 'time': '07:00PM'},
    {'message': 'Hello', 'is_me': true, 'time': '07:00PM'},
    {'message': 'Hello', 'is_me': true, 'time': '07:00PM'},
    {'message': 'Hello', 'is_me': false, 'time': '07:00PM'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF075E55),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white.withOpacity(.7),
            )),
        title: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(widget.image),
          ),
          title: Text(
            widget.name,
            style: TextStyle(color: Colors.white.withOpacity(.7)),
          ),
          subtitle: Text(
            'Last Seen ${widget.time}',
            style: TextStyle(color: Colors.white.withOpacity(.5)),
          ),
          trailing: Icon(
            Icons.more_vert,
            color: Colors.white.withOpacity(.7),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: ListView.builder(
              padding: EdgeInsets.all(15),
              itemCount: chatDetails.length,
              itemBuilder: (context, index) {
                final data = chatDetails[index];
                return Column(
                  crossAxisAlignment: data['is_me'] == true
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: 200,
                          ),
                          // height: 20,
                          // width: 60,
                          margin: EdgeInsets.symmetric(vertical: 5),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: data['is_me'] == true?Color(0xFFfe98bb):Color(0xFF075E55),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              data['message'],
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Text(data['time'])
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(

                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(.1),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
