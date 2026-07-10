import 'package:booklyapp/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/books_action.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:booklyapp/constant.dart';
import 'package:booklyapp/core/utils/styels.dart';

import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomBookDetailsAppBar(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * .33),
                    child: CustomBookImage(onTap: () {}),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'The Jungle Book',
                    style: Styles.textStyle30.copyWith(
                      fontFamily: kGTSectraFine,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Rudyard Kipling',
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                      // ignore: deprecated_member_use
                      color: Colors.white.withOpacity(.7),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const BookRating(mainAxisAlignment: MainAxisAlignment.center),
                  const SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * .1),
                    child: const BooksAction(),
                  ),
                  const Expanded(child: SizedBox(height: 30)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Align(
                      alignment: AlignmentGeometry.centerLeft,
                      child: Text(
                        "You can Also Like",
                        style: Styles.textStyle14.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SimilarBooksListView(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
