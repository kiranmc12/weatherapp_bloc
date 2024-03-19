import 'package:flutter/material.dart';
import 'package:weatherbloc/constants.dart';
import 'package:weatherbloc/screens/widgets/animation.dart';

class DetailRow extends StatelessWidget {
  final String imageUrl;
  final String date;
  final String detail;
  const DetailRow({
    super.key,
    required this.imageUrl,
    required this.date, required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedGrowShrinkContainer(
          child: Image.asset(
            imageUrl,
            scale: 8,
          ),
        ),
        kHeight10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              detail,
              style: const TextStyle(
                  color: kWhite,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
            Text(
              date,
              style: const TextStyle(
                  color: kWhite,
                  fontSize: 10,
                  fontWeight: FontWeight.normal),
            ),
          ],
        )
      ],
    );
  }
}
