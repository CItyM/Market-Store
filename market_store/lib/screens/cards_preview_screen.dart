import 'package:flutter/material.dart';
import 'package:market_store/abstraction/discount_card.dart';
import 'package:market_store/data/sample_data.dart';
import 'package:market_store/widgets/discount_preview.dart';

class CardsPreviewScreen extends StatelessWidget {
  final String title;
  final List<DiscountCard> cardsData;

  const CardsPreviewScreen({Key key, this.title, this.cardsData})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          child: _buildListView(),
        ),
      );

  Widget _buildListView() => ListView.builder(
        padding: EdgeInsets.all(4),
        itemBuilder: (_, index) => DiscountPreview(
          discountCard: cardsData[index],
        ),
        itemCount: cardsData.length,
      );
}
