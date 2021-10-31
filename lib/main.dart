import 'package:flutter/material.dart';
import 'package:flutter_application_1/chats.dart';
import 'package:flutter_application_1/screens/chat_screen.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
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
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.camera_alt_outlined),
                ),
                Tab(text: 'Chats'),
                Tab(text: 'Status'),
                Tab(text: 'Calls'),
              ],
            ),
            // centerTitle: true,
            backgroundColor: Colors.blue[900],
          ),
          // ignore: prefer_const_constructors
          body: const TabBarView(
            children: [
              Text('Camera'),
              Chats(),
              Status(),
              Text('Calls'),
            ],
          ),
          // Center(
          // child: Image(
          //   image: NetworkImage(
          //       'https://avatars.githubusercontent.com/u/57471984?v=4'),
          // ),

          // child: Image.network('https://avatars.githubusercontent.com/u/57471984?v=4')),

          // child: Icon(Icons.air_outlined)

          // child: ElevatedButton(
          //   child: const Text('Click me please'),
          //   onPressed: () {
          //     print('hey');
          //   },
          // ),

          // child: ElevatedButton.icon(
          //     icon: Icon(Icons.air_outlined),
          //     onPressed: () {},
          //     label: Text('Click me please')),

          // child: IconButton(
          //   icon: Icon(Icons.air_outlined),
          //   onPressed: () {},
          // ),
          // ),

          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.chat, color: Colors.white),
            onPressed: () {},
            // backgroundColor: Colors.red,
          ),
        ));
  }
}

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      padding: const EdgeInsets.all(10),
      // margin: const EdgeInsets.all(20),
      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   // children: [
      //   //   const Text('howdy'),
      //   //   TextButton(
      //   //     child: const Text('Click me'),
      //   //     onPressed: () {},
      //   //   ),
      //   //   Container(
      //   //       color: Colors.cyan,
      //   //       padding: const EdgeInsets.all(10),
      //   //       child: const Text('instructions')),
      //   // ],
      //   // children: ListView().builder()
      // ),
      child: ListView.builder(
          itemCount: sampleChats.length,
          itemBuilder: (context, index) {
            final item = sampleChats[index];

            return ListTile(
              leading: const CircleAvatar(
                  // radius: 20,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/57471984?v=4')),
              title: Text(item.header),
              subtitle: Text(item.lastMessage),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          // ChatScreen(
                          //   chat: item.chat,
                          // ),
                          ChatScreen()),
                );
              },
            );
          }),
    );
  }
}

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.cyan,
                child: Text('One')),
          ),
          // Divider(c olor: Colors.black),
          Expanded(
            flex: 1,
            child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.pink,
                child: Text('Two')),
          ),
          Container(
              padding: EdgeInsets.all(10),
              color: Colors.brown,
              child: Text('Three'))
        ]);
  }
}

// class ChatScreen extends StatelessWidget {
//   final Chat chat;

//   const ChatScreen({required this.chat, Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     print(chat.name);
//     return Container(child: Text('hi'));
//   }
// }
