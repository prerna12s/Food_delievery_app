import 'package:flutter/foundation.dart';

class CartProvider with ChangeNotifier{

  List<int>_selectedItem=[];
  List<int> get selectedItem =>_selectedItem;

  void addItem(int value){
    _selectedItem.add(value);
  }

//   int _counter =0;
//   int get counter => _counter;
//
//  double _totalPrice =0.0;
// double get totalPrice=> _totalPrice;

}