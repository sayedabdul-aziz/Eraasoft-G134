import 'package:flutter/material.dart';
import 'package:greenmart/core/widgets/custom_text_form_field.dart';
import 'package:greenmart/features/home/data/product_model.dart';
import 'package:greenmart/features/search/widgets/filtered_grid_view.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final focusNode = FocusNode();
  String searchKey = '';

  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Hero(
          tag: 'search',
          child: Material(
            color: Colors.transparent,
            child: CustomTextFormField(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search here',
              focusNode: focusNode,
              onChange: (value) {
                setState(() {
                  searchKey = value;
                });
              },
            ),
          ),
        ),
        actions: [SizedBox(width: 20)],
      ),
      body: FilteredGridView(products: getProductsByName(searchKey)),
    );
  }
}

List<ProductModel> getProductsByName(String searchKey) {
  return allProducts
      .where((product) => product.name.toLowerCase().contains(searchKey))
      .toList();

  // List<ProductModel> filteredProducts = [];

  // for (var product in allProducts) {
  //   if (product.name.toLowerCase().contains(searchKey)) {
  //     filteredProducts.add(product);
  //   }
  // }

  // return filteredProducts;
}
