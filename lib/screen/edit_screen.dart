import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_manager/mo/product.dart';
import 'package:shop_manager/widget/edit_product.dart';
import 'package:shop_manager/screen/add_product_screen.dart';
class EditScreen extends StatelessWidget {
  static const routeName = 'EditScreen';
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<ProductData>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Product'),
        actions: [
          IconButton(icon: Icon(Icons.add_circle_outline), onPressed: (){
            Navigator.pushNamed(context, AddProductScreen.routeName);
          }),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context,index)=> EditProduct(
            title: productData.productItem[index].title,
            imgUrl: productData.productItem[index].imgUrl,
            id: productData.productItem[index].id
        ),
        itemCount: productData.productItem.length,
      ),
    );
  }
}
