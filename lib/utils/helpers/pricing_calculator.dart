class DPricingCalculator {

  /// -- Calculate price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
  double taxRate = getTaxRateForLocation(location);
  double taxAmount = productPrice * taxRate;

  double shippingCost = getShippingCost(location);

  double totalPrice = productPrice + taxAmount + shippingCost;
  return totalPrice;
  }

  /// -- Calculate Shipping cost
  static String calculateShippingCost(double productPrice, String location) {
  double shippingCost = getShippingCost(location);
  return shippingCost.toStringAsFixed(2);
  }
  /// -- Calculate tax
  static String calculateTax(double productPrice, String location) {
    double taRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taRate;
  return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // Lookup the tax rate for given location from a taxrate DB or API.
    return 0.10; // EXample rate of 10%.
  }

  static double getShippingCost(String location) {
    // Lookup the tax rate for given location from a shipping DB or API.
    // calc the shipping cost based on various factures like distance, weight, etc.
    return 5.00; // EXample shipping cost of $5.
  }

  /// -- Sum all cart values and return total Amount.
  // static double calculateCartTotal(cartModal cart) {
  //   return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}