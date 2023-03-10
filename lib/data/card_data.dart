import 'package:flutter/material.dart';
import 'package:easy_go_wallet/constants/color_constants.dart';

class CardModel {
  String cardHolderName;
  String walletId;
  String walletBallance;
  String cvv;
  Color cardColor;

  CardModel({
    required this.cardHolderName,
    required this.walletId,
    required this.cvv,
    required this.walletBallance,
    required this.cardColor,
  });
}

List<CardModel> myCards = [
  CardModel(
    cardHolderName: "Lana Ojo",
    walletId: "28821234",
    cvv: "500000",
    walletBallance: "₦678,900",
    cardColor: kPrimaryColor,
  ),
  CardModel(
    cardHolderName: "John Doe",
    walletId: "78787809",
    cvv: "**1",
    walletBallance: "₦234500",
    cardColor: kSecondaryColor,
  ),
];
