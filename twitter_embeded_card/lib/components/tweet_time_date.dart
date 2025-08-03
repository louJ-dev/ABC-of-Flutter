import 'package:flutter/material.dart';
import 'package:twitter_embed_card/svg_asset.dart';
import 'package:twitter_embed_card/vector_icon.dart';

class TweetTimeDate extends StatelessWidget {
  const TweetTimeDate({super.key});

  String _getTimeToDisplay() {
    final DateTime now = DateTime.now();

    int hour = now.hour % 12;
    String indicator = now.hour >= 12 ? "PM" : "AM";
    String minute = now.minute.toString().padLeft(2, '0');

    return "$hour:$minute $indicator";
  }

  String _getDateToDisplay() {
    final DateTime now = DateTime.now();

    final List<String> nameOfMonths = [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec"
    ];

    return "${nameOfMonths[now.month]} ${now.day}, ${now.year}";
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(_getTimeToDisplay(), style: const TextStyle(fontSize: 16)),
          
            const SizedBox(width: 16,),
          
            Text(_getDateToDisplay(), style: const TextStyle(fontSize: 16))
          ],
        ),

        const VectorIcon(asset: SvgAsset.info, height: 18,),
      ],
    );
  }
}
