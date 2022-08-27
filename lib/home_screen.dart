import 'package:flutter/material.dart';
import 'package:whats_app_ui/constants.dart';

class WhatsApp extends StatefulWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

AppConstants app = AppConstants();

class _WhatsAppState extends State<WhatsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app.mainColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'WhatsApp',
        ),
        backgroundColor: app.mainColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 8.0,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  storyButton(app.imageUrl[0], "Davie yo"),
                  storyButton(app.imageUrl[1], "Jack Brell"),
                  storyButton(app.imageUrl[2], "Anjie wo"),
                  storyButton(app.imageUrl[3], "Joseph"),
                  storyButton(app.imageUrl[4], "Juline kujo"),
                  storyButton(app.imageUrl[5], "Juline kujo"),
                  storyButton(app.imageUrl[6], "Juline kujo"),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
                child: ListView(
                  children: [
                    chatTile(app.imageUrl[0], "userName", "msg", "9Am", false),
                    chatTile(app.imageUrl[1], "userName", "msg", "8Am", true),
                    chatTile(app.imageUrl[2], "userName", "msg", "6Am", true),
                    chatTile(
                        app.imageUrl[3], "userName", "msg", "Yesterday", false),
                    chatTile(
                        app.imageUrl[5], "userName", "msg", "Yesterday", false),
                    chatTile(
                        app.imageUrl[4], "userName", "msg", "San 20", true),
                    chatTile(app.imageUrl[6], "userName", "msg", "San20", true),
                    chatTile(app.imageUrl[7], "userName", "msg", "San20", true),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget storyButton(String imgUrl, String userName) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: CircleAvatar(
          backgroundImage: NetworkImage(imgUrl),
          radius: 26,
        ),
      ),
      SizedBox(
        height: 5.0,
      ),
      Text(
        userName,
        style: TextStyle(color: Colors.white),
      ),
    ],
  );
}

Widget chatTile(
    String imgUrl, String userName, String msg, String date, bool seen) {
  return InkWell(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imgUrl),
            radius: 28.0,
          ),
          SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        userName,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(date),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(child: Text(userName)),
                    if (seen)
                      Icon(
                        Icons.check_circle,
                        size: 18.0,
                        color: Colors.green,
                      ),
                    if (!seen)
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.grey,
                        size: 18.0,
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}