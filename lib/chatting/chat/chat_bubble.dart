import 'package:chat_app/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_7.dart';

class ChatBubbles extends StatelessWidget {
  const ChatBubbles(this.message,this.isMe,{Key? key}) : super(key: key);

  final String message;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if(isMe)
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,5.0,0),
            child: ChatBubble(
              clipper: ChatBubbleClipper7(type: BubbleType.sendBubble),
              alignment: Alignment.topRight,
              margin: const EdgeInsets.only(top: 20),
              backGroundColor: Colors.indigo,
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.7,
                ),
                child: Column(
                  children: [
                    Text(
                      message,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        if(!isMe)
          Padding(
            padding: const EdgeInsets.fromLTRB(5.0,0,0,0),
            child: ChatBubble(
              clipper: ChatBubbleClipper7(type: BubbleType.receiverBubble),
              backGroundColor: Colors.grey[300],
              margin: const EdgeInsets.only(top: 20),
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.7,
                ),
                child: Column(
                  children: [Text('',style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                    Text(
                      message,
                      style: const TextStyle(color: Colors.black),
                    ),],
                ),
              ),
            ),
          )
      ],
    );
  }
}
