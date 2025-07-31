import 'package:flutter/material.dart';

class TweetContent extends StatelessWidget{
  const TweetContent({super.key});

  @override
  Widget build(BuildContext context){
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(16),
      child: Image.asset(
        'assets/media-query-banner.jpg',
      ),
    );
  }
}
