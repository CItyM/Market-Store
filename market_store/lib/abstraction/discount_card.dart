import 'package:market_store/enums/card_types.dart';

abstract class DiscountCard {
  final CardType cardType;
  num turnover;
  num purchaseValue;
  num discount;
  num discountRate;
  num total;

  DiscountCard({this.cardType, this.purchaseValue, this.turnover});

  void setDiscount();
  void setDiscountRate();
  void setTotal();
}
