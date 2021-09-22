import 'package:flutter/cupertino.dart';
import 'package:shop_app/models/cart/cart.dart';

class Cart with ChangeNotifier {
  final List<CartItem> cartItems = [];
}