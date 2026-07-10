import 'package:booklyapp/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:booklyapp/constant.dart';
import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/core/utils/styels.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListVieItem extends StatelessWidget {
  const BestSellerListVieItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.6 / 4,
            child: CustomBookImage(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kBookDetailsView);
              },
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    'Harry Potter and the Goblet of Fire',
                    style: Styles.textStyle20.copyWith(
                      fontFamily: kGTSectraFine,
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  'J.K. Rowling',
                  style: Styles.textStyle14.copyWith(
                    // ignore: deprecated_member_use
                    color: Colors.white.withOpacity(.7),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '19.99\$',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    BookRating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
