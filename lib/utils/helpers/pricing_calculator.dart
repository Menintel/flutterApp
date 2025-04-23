import 'dart:collection';

class TPricingCalculator {

  /// - - - CALCULATE PRICE FROM TAX AND SHIPPING OR DELIVERY
  static double calculateTotalPrice(double productPrice, String location) {
    //double taxRate = getTaxRateForLocation(location);
    //double taxAmount = productPrice * taxRate;
    //double shippingCost = getShippingCost(location);

    double deliveryCost = getDeliveryCost(location);

    double totalPrice = productPrice + deliveryCost;
    return totalPrice;
  }

  /// - - - Calculate shipping cost
  static String calculateDeliveryCost(double productPrice, String location) {
    double deliveryCost = getDeliveryCost(location);
    return deliveryCost.toStringAsFixed(2);
  }

  // - - - Calculate tax

  static double getDeliveryCost(String loccation) {
    return 15.00;
  }


  /// - - - SUM TOTAL ALL CART VALUES AND RETURN TOTAL AMOUNT
  // static double calculateCartTotal(CartModel cart) {
  // return cart.items.map((e) =>  e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  //}


}