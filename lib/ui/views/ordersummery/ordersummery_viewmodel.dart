import 'package:stacked/stacked.dart';

class OrdersummaryViewModel extends BaseViewModel {
  List<String> items = ["Black Mamba Round Chandelier", "Another Item"];

  // Method to change the delivery address (if needed)
  void changeAddress() {
    // Implement address change logic here
    notifyListeners();
  }

  // Method to update the quantity of a specific item
  void updateQuantity(int index, int quantity) {
    // Implement quantity update logic here
    notifyListeners();
  }

  // Example method to calculate the total price
  double getTotalPrice() {
    double total = 0.0;
    // Implement your total price calculation logic here
    return total;
  }
}
