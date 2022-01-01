import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String id;
  final String imgUrl;
  final String title;
  final double price;
  final String decription;
  bool favorite;
  Product(
      {required this.id,
      required this.title,
      required this.imgUrl,
      required this.price,
      required this.decription,
      this.favorite = false});
  void isFavorite(){
    favorite = !favorite;
    notifyListeners();
  }
}

class ProductData with ChangeNotifier {
  List<Product> _Products = [
    Product(
        id: 'p1',
        title: 'black shirt',
        imgUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6mLga4syurLuLCfKt1eB5L1vzXYV7wzgL5w&usqp=CAU',
        price: 100.000,
        decription: 'black shirt basic'),
    Product(
        id: 'p2',
        title: 'white shose',
        imgUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsWZ80TbSQFHl83ZFR26dbdZ59B_JOKRI7PQ&usqp=CAU',
        price: 100.000,
        decription: 'blue shirt basic'),
    Product(
        id: 'p2',
        title: 'white jacket',
        imgUrl: 'https://cf.shopee.vn/file/5c92f1703046f0ce9db39a96acea7937',
        price: 100.000,
        decription: 'white jacket basic'),
  ];
  List<Product> get productItem {
    return [..._Products];
  }
  Product findPd(String id){
    return _Products.firstWhere((productId) => productId.id==id);
  }

  void addNewPd(Product product) {
    final newProduct = Product(
        id: DateTime.now().toString(),
        title: product.title,
        imgUrl: product.imgUrl,
        price: product.price,
        decription: product.decription);
    _Products.add(newProduct);
    notifyListeners();
  }
  void updatePd(String id, Product product){
    final index = _Products.indexWhere((prod) => prod.id == id);
    _Products[index] = product;
    notifyListeners();
  }

  void deletePd(String id){
    _Products.remove((prod)=> prod.id ==id);
    notifyListeners();
  }

}
