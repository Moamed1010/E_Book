import 'package:booklyapp/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_app_bar.dart';

import 'package:booklyapp/Features/home/presentation/views/widgets/featured_list_view.dart';

import 'package:booklyapp/core/utils/styels.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              SizedBox(height: 15),
              FeaturedBookListView(),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
