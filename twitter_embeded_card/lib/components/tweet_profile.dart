import 'package:flutter/material.dart';
import 'package:twitter_embed_card/svg_asset.dart';
import 'package:twitter_embed_card/vector_icon.dart';

class TweetProfile extends StatelessWidget {
  const TweetProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 6,
      children: [

        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(100),
          child: Image.asset(
            'assets/andrea-avatar.png',
            height: 64,
            width: 64,
          ),
        ),

        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 6,
              children: [
                Text(
                  'Andrea Bizotto',
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 18,
                    fontWeight: FontWeight.w700
                  ),
                ),
                VectorIcon(asset: SvgAsset.heartBlue, height: 24),
                VectorIcon(asset: SvgAsset.verified, height: 24)
              ],
            ),
            
            Row(
              spacing: 6,
              children: [
                Text(
                  '@biz84',
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                
                Text(
                  'Follow',
                  style: TextStyle(
                    color: Color(0xff1da1f2),
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
