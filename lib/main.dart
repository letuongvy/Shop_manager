import 'dart:js';

import 'package:flutter/material.dart';
import 'package:shop_manager/screen/Login.dart';
import 'screen/home_page.dart';
import 'package:provider/provider.dart';
import 'mo/product.dart';
import 'screen/edit_screen.dart';
import 'screen/add_product_screen.dart';
import 'screen/PdDetail_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProductData(),
        child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.deepOrange,
            accentColor: Colors.redAccent,
          ),
          home:
          loginPage(),
          routes: {
            EditScreen.routeName: (context)=>EditScreen(),
            AddProductScreen.routeName: (context)=>AddProductScreen(),
            PdDetailScreen.routeName: (context)=>PdDetailScreen(),
          },
        ),
    );

  }

}
