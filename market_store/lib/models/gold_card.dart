import 'package:market_store/abstraction/discount_card.dart';
import 'package:market_store/enums/card_types.dart';

class GoldCard implements DiscountCard {
  @override
  num discount = 0;

  @override
  num discountRate = 0.02;

  @override
  num purchaseValue;

  @override
  num total = 0;

  @override
  num turnover;

  @override
  CardType get cardType => CardType.Gold;

  GoldCard({this.turnover, this.purchaseValue}) {
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
    discountRate += ((turnover ~/ 100) / 100);
    if (discountRate > 0.1) {
      discountRate = 0.1;
    }
  }

  @override
  void setTotal() {
    total = purchaseValue - discount;
  }
}
