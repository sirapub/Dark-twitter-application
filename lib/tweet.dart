import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tweet extends StatelessWidget {
  final String avatar_url;
  final String postText;
  final bool state;
  final String time;
  final String name;
  final String avatar_pro;
  const Tweet(
      {super.key,
      required this.state,
      required this.name,
      required this.time,
      required this.avatar_url,
      required this.postText,
      required this.avatar_pro});

  @override
  Widget build(BuildContext context) {
    return tweet();
  }

  Widget tweet() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        tweetAvatar(),
        tweetBody(),
      ],
    );
  }

  Widget tweetAvatar() {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(avatar_pro),
          ),
        ],
      ),
    );
  }

  Widget tweetBody() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tweetHeader(),
          if (state == true) tweetImage(postText) else tweetText(postText),
          tweetButton(),
        ],
      ),
    );
  }

  Widget tweetText(String text) {
    return Text(text);
  }

  Widget tweetImage(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(
          height: 10.0,
        ),
        Image(width: 400.0, image: NetworkImage(avatar_url))
      ],
    );
  }

  Widget tweetButton() {
    return Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0, right: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          tweetIconBoutton(FontAwesomeIcons.message, "13"),
          tweetIconBoutton(FontAwesomeIcons.retweet, "509k"),
          tweetIconBoutton(FontAwesomeIcons.heart, "89k"),
          tweetIconBoutton(FontAwesomeIcons.share, "13k"),
        ],
      ),
    );
  }

  Widget tweetIconBoutton(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.black,
          size: 18.0,
        ),
        Container(
          margin: EdgeInsets.all(6.0),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.red,
              fontSize: 14.0,
            ),
          ),
        )
      ],
    );
  }

  Widget tweetHeader() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 5.0),
          child: Text(
            "Sirapub",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13.0,
            ),
          ),
        ),
        tweetID(name),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.angleDown,
            size: 14.0,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget tweetID(String text) {
    return Row(
      children: [
        Container(
            margin: EdgeInsets.only(right: 5.0),
            child: Text(
              name,
              style: TextStyle(
                color: Color.fromARGB(255, 206, 206, 206),
                fontSize: 14.0,
              ),
            )),
        tweetTime(time)
      ],
    );
  }

  Widget tweetTime(String text) {
    return Row(
      children: [
        Container(
            margin: EdgeInsets.only(right: 5.0),
            child: Text(
              time,
              style: TextStyle(
                color: Color.fromARGB(255, 206, 206, 206),
                fontSize: 14.0,
              ),
            )),
      ],
    );
  }
}
