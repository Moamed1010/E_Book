import 'package:booklyapp/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:booklyapp/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:booklyapp/core/utils/styels.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              CustomSearchTextField(),
              const SizedBox(height: 20),

              const Text('Search Result', style: Styles.textStyle18),

              const SizedBox(height: 10),
              const Expanded(child: SearchResultListView()),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return BestSellerListVieItem();
      },
    );
  }
}
