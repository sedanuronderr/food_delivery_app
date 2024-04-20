import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/di/get_it.dart';

import 'app/food_delivery_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await setupDI();
  runApp( FoodDeliveryApp());
}

