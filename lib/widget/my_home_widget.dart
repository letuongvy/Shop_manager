import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_manager/mo/product.dart';
import 'package:shop_manager/widget/my_home_gridtilte.dart';

class MyHomePageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<ProductData>(context);

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 3 / 2,
      ),
      itemBuilder: (context, index) {
        return ChangeNotifierProvider.value(
          value: productData.productItem[index],
          child: MyHomeGridTitle(),
        );
      },
      itemCount: productData.productItem.length,
    );
  }
}
