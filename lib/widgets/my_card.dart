import 'package:flutter/material.dart';
import 'package:easy_go_wallet/constants/app_textstyle.dart';
import 'package:easy_go_wallet/constants/color_constants.dart';
import 'package:easy_go_wallet/data/card_data.dart';
import 'package:easy_go_wallet/widgets/my_card.dart';

class MyCard extends StatelessWidget {
  final CardModel card;
  const MyCard({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 200,
      width: 350,
      decoration: BoxDecoration(
        color: card.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "WALLET NAME",
                      style: ApptextStyle.MY_CARD_TITLE,
                    ),
                    Text(
                      card.cardHolderName,
                      style: ApptextStyle.MY_CARD_SUBTITLE,
                    ),
                  ],
                ),
                Text(
                  card.walletId,
                  style: ApptextStyle.MY_CARD_SUBTITLE,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "WALLET BALANCE",
                      style: ApptextStyle.MY_CARD_TITLE,
                    ),
                    Text(
                      card.walletBallance,
                      style: ApptextStyle.MY_CARD_SUBTITLE,
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
                child: Image.asset('assets/icons/mcard.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}