import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final void Function() onTap;
  const CustomBookImage({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        //  height: MediaQuery.of(context).size.height * 0.22,
        child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                image: AssetImage(AssetsData.kTestImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
