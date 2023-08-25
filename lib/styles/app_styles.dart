
import 'package:flutter/material.dart';




// Extended styles my own code

class PokemonImage extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;

  PokemonImage({
    required this.imageUrl,
    this.width = 83,
    this.height = 54,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      width: width,
      height: height,
    );
  }
}

class AbilityTextStyle {
  static const TextStyle myTextStyle = TextStyle(
    color: Color(0xFF7E7E7E),
    fontFamily: 'Roboto',
    fontSize: 13,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    height: 1.53846,
    letterSpacing: -0.08,
  );
}



class CustomButtonStyle {
  static ButtonStyle myButtonStyle = TextButton.styleFrom(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    backgroundColor: Color(0xFFEAF0FC),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(7),
    ),
  );
}