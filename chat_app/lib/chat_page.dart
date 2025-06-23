import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi, Athul'),
        actions: [
          IconButton(
              onPressed: () {
                print('logOut button clicked');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ChatBubble(alignment:Alignment.centerLeft,message:'Hi This is my message'),
                ChatBubble(alignment:Alignment.centerRight,message:'Hi'),
                ChatBubble(alignment:Alignment.centerLeft,message:'How are you')
              ],
            ),
          ),
        ChatInput(),
        ],
      ),
    );
  }
}
