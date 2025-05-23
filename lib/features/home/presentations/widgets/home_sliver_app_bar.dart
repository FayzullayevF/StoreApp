import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/data/models/category_model.dart';
import 'package:store_app/data/models/sizes_model.dart';
import 'package:store_app/features/home/presentations/widgets/home_categories.dart';
import 'package:store_app/features/home/presentations/widgets/search_container.dart';
import 'home_filter_box.dart';

class HomeSliverAppBar extends StatelessWidget {
  const HomeSliverAppBar({super.key, required this.categories,required this.sizesList});

  final List<CategoryModel> categories;
  final List<SizesModel>? sizesList;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap: true,
      automaticallyImplyLeading: false,
      toolbarHeight: 110.h,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: SearchContainer()),
              SizedBox(width: 8.w),
              HomeFilterBox(sizesList: sizesList,),
            ],
          ),
          SizedBox(height: 16.h),
          HomeCategories(categories: categories),
        ],
      ),
    );
  }
}
