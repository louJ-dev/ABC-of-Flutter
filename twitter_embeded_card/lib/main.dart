import 'package:flutter/material.dart';
import 'package:twitter_embed_card/components/tweet_content.dart';
import 'package:twitter_embed_card/components/tweet_time_date.dart';
import 'components/tweet_caption.dart';
import 'components/tweet_profile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Helvetica',
      ),
      home: const SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(16.0),
            // Use Center as layout has unconstrained width (loose constraints),
            // together with SizedBox to specify the max width (tight constraints)
            // See this thread for more info:
            // https://twitter.com/biz84/status/1445400059894542337
            child: Center(
              child: SizedBox(
                width: 600, // max allowed width
                child: TwitterEmbedCard(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TwitterEmbedCard extends StatelessWidget {
  const TwitterEmbedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TweetProfile(),

        SizedBox(height: 16),

        TweetCaption(),

        SizedBox(height: 16),

        TweetContent(),

        SizedBox(height: 10),

        TweetTimeDate(),

        Divider()
      ],
    );
  }
}
