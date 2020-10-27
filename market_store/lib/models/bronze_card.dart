import 'package:market_store/abstraction/discount_card.dart';
import 'package:market_store/enums/card_types.dart';

class BronzeCard implements DiscountCard {
  @override
  num discount = 0;

  @override
  num discountRate = 0;

  @override
  num purchaseValue;

  @override
  num total = 0;

  @override
  num turnover;

  @override
  CardType get cardType => CardType.Bronze;

  BronzeCard({this.turnover, this.purchaseValue}) {
    setDiscountRate();
    setDiscount();
    setTotal();
  }

  @override
  void setDiscount() {
    discount = purchaseValue * discountRate;
  }

  @override
  void setDiscountRate() {
    if (turnover >= 100 && turnover <= 300) {
      discountRate = 0.01;
    } else if (turnover > 300) {
      discountRate = 0.025;
    }
  }

  @override
  void setTotal() {
    total = purchaseValue - discount;
  }
}
