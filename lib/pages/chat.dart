import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';


class ChatPage extends StatefulWidget {
  ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  List<String> messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          BubbleSpecialThree(
            text: 'lorem ipsum',
            color: Color(0xFF1B97F3),
            tail: true,
            isSender: false,
            textStyle: TextStyle(
                color: Colors.white,
                fontSize: 16
            ),
          ),
          MessageBar(
            // onSend: (_) => =_,
            // actions: [
            //   InkWell(
            //     child: Icon(
            //       Icons.add,
            //       color: Colors.black,
            //       size: 24,
            //     ),
            //     onTap: () {},
            //   ),
            //   Padding(
            //     padding: EdgeInsets.only(left: 8, right: 8),
            //     child: InkWell(
            //       child: Icon(
            //         Icons.camera_alt,
            //         color: Colors.green,
            //         size: 24,
            //       ),
            //       onTap: () {},
            //     ),
            //   ),
            // ],
          ),
        ],
      )
    );
  }
}






