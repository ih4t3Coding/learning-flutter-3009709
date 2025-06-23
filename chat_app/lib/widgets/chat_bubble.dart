import 'package:flutter/material.dart';
 
 class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key,required this.alignment,required this.message});
  final String message;
  final Alignment alignment;
  @override
  Widget build(BuildContext context) {
      return Align(
      alignment: alignment,
      child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('$message'),
              Image.network(
                  'https://t3.ftcdn.net/jpg/06/17/53/76/240_F_617537669_CScGnc5AieghyGGJqc31IrNWcjeW347a.jpg'),
            ],
          ),
          margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12)))),
    );
  }
}