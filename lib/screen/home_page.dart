import 'package:flutter/material.dart';
import 'package:shop_manager/widget/my_home_widget.dart';
import 'edit_screen.dart';
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY SHOP'),
      ),
      body: MyHomePageWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, EditScreen.routeName);
        },
        child: Icon(Icons.edit_outlined),
      ),
    );
  }
}
