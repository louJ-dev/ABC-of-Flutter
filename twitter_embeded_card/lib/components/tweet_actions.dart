import 'package:flutter/material.dart';
import 'package:twitter_embed_card/svg_asset.dart';
import 'package:twitter_embed_card/vector_icon.dart';

class TweetActions extends StatelessWidget {
  const TweetActions({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle _actionTexTyle = TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(97, 97, 97, 1));

    return Column(
      spacing: 8,
      children: [
        const Row(
          spacing: 24,
          children: [
            Row(
              spacing: 8,
              children: [
                VectorIcon(asset: SvgAsset.heartRed),
                Text("1k", style: _actionTexTyle),
              ],
            ),
            Row(
              spacing: 8,
              children: [
                VectorIcon(asset: SvgAsset.comment),
                Text("Reply", style: _actionTexTyle)
              ],
            ),
            Row(
              spacing: 8,
              children: [
                VectorIcon(asset: SvgAsset.link),
                Text("Copy Link", style: _actionTexTyle)
              ],
            ),
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            onPressed: () => {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 4),
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(180)),
              side: const BorderSide(width: 0.4),
              elevation: 0
            ),
            child: const Text(
              "Read 17 Replies",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            )
          ),
        )
      ],
    );
  }
}
