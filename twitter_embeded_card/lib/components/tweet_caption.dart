import 'package:flutter/material.dart';

class TweetCaption extends StatelessWidget {
  const TweetCaption({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        style: TextStyle(
          fontSize: 18,
          color: Colors.black
        ),
        children: <TextSpan>[
          TextSpan(text: "Did you know?\n"),
          TextSpan(text: "\n"),
          TextSpan(text:"When you call `MediaQuery.of(context)` inside a build method, the widget will rebuild when *any* of the MediaQuery properties change.\n"),
          TextSpan(text: '\n'),
          TextSpan(text: "But there's a better way that lets you depend only on the properties you care about (and minimize unnecessary rebuilds). 👇"),
        ]
      ),
    );
  }
}
