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
        title: Expanded(
            child: ListTile(
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
        )),
      ),
    );
  }
}
