import 'package:equatable/equatable.dart';
import 'package:store_app/data/models/product_model.dart';
import 'package:store_app/data/models/sizes_model.dart';

import '../../../data/models/category_model.dart';

enum HomeStatus { idle, error, loading }

class HomeState extends Equatable {
  const HomeState(
      {required this.status, required this.products, required this.categories, this.isSuccess,this.sizesList});

  final HomeStatus? status;
  final List<CategoryModel> categories;

  final List<ProductModel>? products;

  final List<SizesModel>? sizesList;
  final bool ?isSuccess;

  factory HomeState.initial() {
    return HomeState(status: HomeStatus.loading,
        products: [],
        categories: [],
        sizesList: [],
        isSuccess: null); // Initialize categories as an empty list
  }

  HomeState copyWith({required HomeStatus? status,
    List<ProductModel>? products,
    bool? isLike,
    List<CategoryModel>? categories,
    List<SizesModel>? sizesList,
  }) {
    return HomeState(
      status: status ?? this.status,
      products: products ?? this.products,
      isSuccess: isLike ?? isSuccess,
      categories: categories ?? this.categories,
      sizesList: sizesList ?? this.sizesList,
    );
  }

  @override
  List<Object?> get props => [status, products, categories, isSuccess];
}