import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_manager/mo/product.dart';
import 'package:shop_manager/screen/PdDetail_screen.dart';

class MyHomeGridTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final singelproduct = Provider.of<Product>(context, listen: false);
    return GridTile(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, PdDetailScreen.routeName,
              arguments: singelproduct.id);
        },
        child: Image.network(
          singelproduct.imgUrl,
          fit: BoxFit.cover,
        ),
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black45,
        leading: Consumer<Product>(
          builder: (context, product, _) => IconButton(
            icon: product.favorite
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border),
            onPressed: () {
              product.isFavorite();
            },
            color: Colors.red,
          ),
        ),
        title: Text(singelproduct.title),
      ),
    );
  }
}
