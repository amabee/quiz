import 'package:flutter/cupertino.dart';

// core color
const primaryColor = 0xFF037F0D;
const secondaryColor = 0xFFF3E5F5;

//text field related color
const textFieldBorderColor = 0xFFFFFFFF;
const textFieldFillColor = 0xFFEFEFEF;

// Full project common color
const homeBackGroundColor = 0xFFE0E0E0;
const backGroundColor = 0xFFFFFFFF;

// All Auth related color
const forgotPasswordColor = 0xFF616161;
const errorColor = 0xFFE53935;
const floatingArrowIconColor = 0xFFFFFFFF;

// Home AppBar Color
const appBarColor = 0xFFFFFFFF;
const appBarTitleColor = 0xFF0E5527;
const appBarSubTitleColor = 0xDD000000;

// Bottom navigation color
const unselectedItemColor = 0xFFBDBDBD;
const selectedItemColor = primaryColor;

// Challenge View
const challengeNameColor = 0xFFFFFFFF;
const challengePrizeColor = 0xFFFFFFFF;
const challengeEntryFeeColor = 0xFFFFFFFF;
const challengeOnlinePlayerColor = 0xFFFFFFFF;

//player Status view
const playerStatusLevelColor = 0xFFFFFFFF;
const playerStatusGoldCoinColor = 0xFFFFFFFF;

// Running tournament
const runningTournamentTitleColor = 0xFFFFFFFF;
const runningTournamentTimeColor = 0xFFFFFFFF;
const runningTournamentPrizeContainerColor = 0xFFFFFFFF;

// Top Topics
const topTopicsItemViewColor = 0xFFFFFFFF;

// Bcs
const bcsItemViewColor = 0xFFFFFFFF;
const bcsPriceColor = 0xFFE57373;

//shop
const shopLabelBarColor = Color(0xFF0D47A1);
const shopLabelColor = Color(0xFFFFFFFF);
const coinItemBackgroundColor = Color(0xFF448AFF);
const coinNumberTextColor = Color(0xFFFFFFFF);
const coinPriceBarColor = Color(0xFF3F51BF);
const coinPriceColor = Color(0xFFFFFFFF);
const gemItemBackgroundColor = Color(0xFFFF782F);
const gemNumberTextColor = Color(0xFFFFFFFF);
const gemPriceBarColor = Color(0xFFAB2323);
const gemPriceColor = Color(0xFFFFFFFF);

// darken the color
Color darken(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

  return hslDark.toColor();
}

// lighter the color
Color lighten(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

  return hslLight.toColor();
}
