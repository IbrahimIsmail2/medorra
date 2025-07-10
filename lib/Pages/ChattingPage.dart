import 'dart:async';
import 'package:flutter/material.dart';
import 'package:medora/Pages/ShowCategories.dart';
import 'package:medora/Pages/home.dart';

class Chattingpage extends StatefulWidget {
  const Chattingpage({super.key});

  @override
  State<Chattingpage> createState() => _ChattingpageState();
}

class _ChattingpageState extends State<Chattingpage> {
  final TextEditingController _messageController = TextEditingController();

  final Color userMessageColor = const Color.fromARGB(255, 134, 201, 217);
  final Color replyMessageColor = const Color(0xffE0E0E0);

  final List<Map<String, dynamic>> messages = [];

  int sentMessagesCount = 0;

  final List<String> autoReplies = [
    'Sure! How can I assist you?',
    'We have this product in the skin care department and also many similar products.',
  ];

  void sendMessage(String text) {
    if (text.trim().isEmpty) return;

    setState(() {
      messages.add({'text': text, 'isUser': true});
      sentMessagesCount++;
    });

    _messageController.clear();

    // Show auto-reply after 1 second delay
    if (sentMessagesCount <= autoReplies.length) {
      Future.delayed(const Duration(seconds: 1), () {
        setState(() {
          messages.add({
            'text': autoReplies[sentMessagesCount - 1],
            'isUser': false,
            'showButton': sentMessagesCount == 2, // Show button on second reply
          });
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F3F3),
      body: SafeArea(
        child: Column(
          children: [
            // App Bar
            Container(
              width: double.infinity,
              height: 85,
              decoration: BoxDecoration(
                color: userMessageColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 30),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 100),
                      child: Text(
                        'Medhelper',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),

            // Chat Body
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final message = messages[index];
                  final isUser = message['isUser'] as bool;
                  final bool showButton = message['showButton'] == true;

                  return Column(
                    crossAxisAlignment: isUser
                        ? CrossAxisAlignment.end
                        : CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: isUser
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.7,
                          ),
                          decoration: BoxDecoration(
                            color:
                                isUser ? userMessageColor : replyMessageColor,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text(
                            message['text'],
                            style: TextStyle(
                              color: isUser ? Colors.white : Colors.black87,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      if (showButton)
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const CategoriesScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              'Check the Categories',
                              style: TextStyle(
                                color: Color.fromARGB(255, 93, 167, 184),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),

            // Message Input
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: TextField(
                        controller: _messageController,
                        decoration: const InputDecoration(
                          hintText: "Type your message...",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => sendMessage(_messageController.text),
                    child: CircleAvatar(
                      backgroundColor: userMessageColor,
                      child: const Icon(Icons.send, color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
