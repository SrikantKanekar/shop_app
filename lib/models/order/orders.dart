import 'package:flutter/cupertino.dart';
import 'package:shop_app/models/order/order.dart';

class Orders with ChangeNotifier {
  final List<Order> orders = [];
}