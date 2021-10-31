import 'package:flutter/material.dart';
// import 'package:flutter_application_1/chats.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chatty'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: null,
          ),
        ],
        backgroundColor: Colors.blue[900],
      ),
      // ignore: prefer_const_constructors
      body: const Text('hi'),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.chat, color: Colors.white),
        onPressed: () {},
        // backgroundColor: Colors.red,
      ),
    );
  }
}
