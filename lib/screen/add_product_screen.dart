import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_manager/mo/product.dart';

class AddProductScreen extends StatefulWidget {
  static const routeName = 'AddProductScreen';
  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {

  var _editPd = Product(id: '', title: '', imgUrl: '', price: 0, decription: '');
  final _form = GlobalKey<FormState>();
  
  void _savePd(){
    _form.currentState!.save();

    Provider.of<ProductData>(context,listen: false).addNewPd(_editPd);
    Navigator.pop(context);
  }

  // var _isInt= true;
  // var _isValue = {
  //   'id' : null;
  //   'title' : '';
  //   'price' : '';
  //   'decription' : '';
  //   'imgUrl' : '';
  // };
  // @override
  // void didChangeDependencies() {
  //   if(_isInt){
  //     final productId = ModalRoute.of(context)!.settings.arguments as String;
  //     if(productId != null){
  //       final product = Provider.of<ProductData>(context).findPd(productId);
  //       _editPd = product;
  //       _isValue={
  //         'id' : null;
  //         'title' : _editPd.title;
  //         'price' : '';
  //         'decription' : '';
  //         'imgUrl' : '';
  //       };
  //     }
  //   }
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Product'),
        actions: [
          IconButton(icon: Icon(Icons.save), onPressed: (){_savePd();}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _form,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Title',
                ),
                onSaved: (value){
                  _editPd = Product(id: _editPd.id, title: value.toString(), imgUrl: _editPd.imgUrl, price: _editPd.price, decription: _editPd.decription);
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'description',
                ),
                onSaved: (value){
                  _editPd = Product(id: _editPd.id, title: _editPd.title, imgUrl: _editPd.imgUrl, price: _editPd.price, decription: value.toString());
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'price',
                ),
                keyboardType: TextInputType.number,
                onSaved: (value){
                  _editPd = Product(id: _editPd.id, title: _editPd.title, imgUrl: _editPd.imgUrl, price: double.parse(value.toString()), decription: _editPd.decription);
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'ImageUrl',
                ),
                keyboardType: TextInputType.url,
                onSaved: (value){
                  _editPd = Product(id: _editPd.id, title: _editPd.title, imgUrl: value.toString(), price: _editPd.price, decription: _editPd.decription);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}