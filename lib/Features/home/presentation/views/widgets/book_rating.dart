import 'package:booklyapp/core/utils/styels.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const BookRating({
    this.mainAxisAlignment = MainAxisAlignment.start,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        FaIcon(FontAwesomeIcons.solidStar, color: Colors.amber),
        const SizedBox(width: 8),
        Text(
          '4.8',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 5),

        Text(
          ' (3250)',
          style: Styles.textStyle14.copyWith(
            // ignore: deprecated_member_use
            color: Colors.white.withOpacity(.5),
          ),
        ),
      ],
    );
  }
}
