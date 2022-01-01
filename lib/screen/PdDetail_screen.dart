import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_manager/mo/product.dart';

class PdDetailScreen extends StatelessWidget {
  static const routeName = 'PdDetailScreen';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final loadingPd = Provider.of<ProductData>(context).findPd(productId);

    return Scaffold(
      appBar: AppBar(title: Text(loadingPd.title),),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(loadingPd.imgUrl, fit: BoxFit.cover),
            ),
            Text(loadingPd.title, style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w700),),
            Text('\$ ${loadingPd.price}', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),),
            SizedBox(height: 20,),
            Text(loadingPd.decription, style: TextStyle(fontSize: 20.0,),)
          ],
        ),
      ),
    );
  }
}
