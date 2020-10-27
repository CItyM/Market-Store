import 'package:flutter/material.dart';
import 'package:market_store/enums/card_types.dart';
import 'package:market_store/screens/cards_preview_screen.dart';
import 'package:market_store/widgets/card_preview_button.dart';
import 'package:market_store/data/sample_data.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Market Store"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CardPreviewButton(
              text: CardType.Bronze.toString(),
              color: Color(0xAADCA570),
              onButtonPressed: () => _onBronzeButtonPressed(context),
            ),
            CardPreviewButton(
              text: CardType.Silver.toString(),
              color: Color(0xAADADADA),
              onButtonPressed: () => _onSilverButtonPressed(context),
            ),
            CardPreviewButton(
              text: CardType.Gold.toString(),
              color: Color(0xAAFFE976),
              onButtonPressed: () => _onGoldButtonPressed(context),
            ),
            CardPreviewButton(
              text: "All",
              color: Colors.green[200],
              onButtonPressed: () => _onAllButtonPressed(context),
            ),
          ],
        ),
      ),
    );
  }

  void _onBronzeButtonPressed(BuildContext context) {
    var bronzeData =
        discountCardData.where((c) => c.cardType == CardType.Bronze).toList();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => CardsPreviewScreen(
                  title: CardType.Bronze.toString(),
                  cardsData: bronzeData,
                )));
  }

  void _onSilverButtonPressed(BuildContext context) {
    var bronzeData =
        discountCardData.where((c) => c.cardType == CardType.Silver).toList();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => CardsPreviewScreen(
                  title: CardType.Silver.toString(),
                  cardsData: bronzeData,
                )));
  }

  void _onGoldButtonPressed(BuildContext context) {
    var bronzeData =
        discountCardData.where((c) => c.cardType == CardType.Gold).toList();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => CardsPreviewScreen(
                  title: CardType.Gold.toString(),
                  cardsData: bronzeData,
                )));
  }

  void _onAllButtonPressed(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => CardsPreviewScreen(
                  title: "All",
                  cardsData: discountCardData,
                )));
  }
}
