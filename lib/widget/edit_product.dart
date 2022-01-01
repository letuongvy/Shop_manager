import 'package:flutter/material.dart';
import 'package:shop_manager/screen/add_product_screen.dart';
import 'package:provider/provider.dart';
import 'package:shop_manager/mo/product.dart';

class EditProduct extends StatelessWidget {
  final String id;
  final String title;
  final String imgUrl;
  EditProduct(
      {required String this.imgUrl,
      required String this.id,
      required String this.title});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imgUrl),
      ),
      trailing: Container(
        width: 100,
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AddProductScreen.routeName,
                    arguments: id);
              },
              icon: Icon(Icons.edit),
              color: Theme.of(context).primaryColor,
            ),
            IconButton(
              icon: Icon(Icons.delete_outline),
              color: Theme.of(context).errorColor,
              onPressed: () {
                Provider.of<ProductData>(context,listen: false).deletePd(id);
              },
            )
          ],
        ),
      ),
    );
  }
}
