import 'package:market_store/abstraction/discount_card.dart';
import 'package:market_store/enums/card_types.dart';

class SilverCard implements DiscountCard {
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
  CardType get cardType => CardType.Silver;

  SilverCard({this.turnover, this.purchaseValue}) {
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
    if (turnover > 300) {
      discountRate = 0.035;
    }
  }

  @override
  void setTotal() {
    total = purchaseValue - discount;
  }
}
