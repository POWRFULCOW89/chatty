library chats;

import 'dart:math';

import 'package:flutter/material.dart';

class Message {
  String _content;
  DateTime _date;
  String _sender;

  Message(this._content, this._date, this._sender);
}

class Chat {
  String _name;
  List<Message> _messages;

  Chat(this._name, this._messages);

  get name => _name;
}

final List<Chat> chats = List<Chat>.generate(
    20,
    (i) => Chat('Person', [
          Message('Hello', DateTime.now(), 'Person'),
          Message('Hi', DateTime.now(), 'Person'),
          Message('How are you?', DateTime.now(), 'Person'),
          Message('I am fine', DateTime.now(), 'Person'),
          Message('What about you?', DateTime.now(), 'Person'),
          Message('I am fine too', DateTime.now(), 'Person'),
          Message('Bye', DateTime.now(), 'Person'),
        ]));

final List<ChatRow> sampleChats = List<ChatRow>.generate(
    chats.length,
    (i) => ChatRow(
        chats[i]._name,
        chats[i]._messages[chats[i]._messages.length - 1]._content,
        chats[i],
        UniqueKey()));

class ChatRow extends StatelessWidget {
  final String header;
  final String lastMessage;
  final Chat chat;

  const ChatRow(this.header, this.lastMessage, this.chat, Key? key)
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(header));
  }
}
