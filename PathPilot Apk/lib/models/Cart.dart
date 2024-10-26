import 'package:pathpilot/models/update.dart';

class Cart {
  final Update update;
  final int numOfItem;

  Cart({required this.update, required this.numOfItem});
}

// Demo data for our cart

List<Cart> demoCarts = [
  Cart(update: demoUpdates[0], numOfItem: 2),
  Cart(update: demoUpdates[1], numOfItem: 1),
  Cart(update: demoUpdates[3], numOfItem: 1),
];
