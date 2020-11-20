import 'package:flutter/material.dart';

Widget promoCard(Color color, String title, String promo, String img) {
  return Container(
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(8.0),
    ),
    width: double.infinity,
    height: 200.0,
    child: Stack(
      children: [
        Positioned(
            width: 180.0,
            left: 8.0,
            top: 50.0,
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            )),
        Positioned(
            left: 8.0,
            top: 140.0,
            child: Text(
              "Price $promo Off",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.w400,
              ),
            )),
        Positioned(
          left: 200.0,
          top: 40.0,
          width: 150.0,
          child: Image.network(img),
        ),
      ],
    ),
  );
}
