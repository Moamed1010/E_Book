import 'package:booklyapp/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            backgroundColor: Colors.white,
            textColor: Colors.black,
            text: '20.99 USD',
            onPressed: () {},
          ),
        ),
        Expanded(
          child: CustomButton(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            backgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            text: 'Free Preview',
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
