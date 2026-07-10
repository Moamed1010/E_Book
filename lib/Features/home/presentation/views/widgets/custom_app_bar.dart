import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AssetsData.kLogo, height: 25),
        const Spacer(),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSearchView);
          },
          icon: const FaIcon(FontAwesomeIcons.magnifyingGlass, size: 26),
        ),
      ],
    );
  }
}
