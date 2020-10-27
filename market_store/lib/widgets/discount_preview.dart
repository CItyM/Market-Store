import 'package:flutter/material.dart';
import 'package:market_store/abstraction/discount_card.dart';
import 'package:market_store/enums/card_types.dart';

class DiscountPreview extends StatelessWidget {
  final DiscountCard discountCard;
  DiscountPreview({Key key, this.discountCard}) : super(key: key);
  @override
  Widget build(BuildContext context) => Card(
        color: _setColor(),
        margin: EdgeInsets.all(4),
        child: Container(
          margin: EdgeInsets.all(4),
          padding: EdgeInsets.all(4),
          child: Column(
            children: [
              Container(
                child: Text(
                  discountCard.cardType.toString(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                ),
                margin: EdgeInsets.all(2),
              ),
              Divider(thickness: 2),
              Text(
                "Purchase value: \$${_formatMoney(discountCard.purchaseValue)}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Text(
                "Discount rate: ${_formatPercent(discountCard.discountRate * 100)}%",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Text(
                "Discount: \$${_formatMoney(discountCard.discount)}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Divider(thickness: 2),
              Text(
                "Total: \$${_formatMoney(discountCard.total)}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      );

  Color _setColor() {
    switch (discountCard.cardType) {
      case CardType.Bronze:
        return Color(0xAADCA570);
        break;
      case CardType.Silver:
        return Color(0xAADADADA);
        break;
      case CardType.Gold:
        return Color(0xAAFFE976);
        break;
      default:
        return Colors.white;
    }
  }

  String _formatMoney(num value) {
    return value.toStringAsFixed(value.truncateToDouble() == value ? 0 : 2);
  }

  String _formatPercent(num value) {
    return value.toStringAsFixed(value.truncateToDouble() == value ? 0 : 1);
  }
}
