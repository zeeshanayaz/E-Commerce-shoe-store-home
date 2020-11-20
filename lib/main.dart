import 'package:e_commerce_store/components/product_card.dart';
import 'package:e_commerce_store/components/promo_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoppingApp(),
    );
  }
}

class ShoppingApp extends StatefulWidget {
  @override
  _ShoppingAppState createState() => _ShoppingAppState();
}

class _ShoppingAppState extends State<ShoppingApp> {

  List<String> promoBannerImgUrl = [
    "https://purepng.com/public/uploads/large/purepng.com-large-casual-men-shoesmen-shoesfashiondesignestylehuman-footcasuallrage-1421526391104nr1o7.png"
  ];

  List<String> menShoes = [
    "https://freepngimg.com/thumb/shoes/27428-5-nike-shoes-transparent-background-thumb.png",
    "https://pngimg.com/uploads/running_shoes/running_shoes_PNG5805.png",
    "https://pngimg.com/uploads/running_shoes/running_shoes_PNG5806.png",
  ];

  List<String> womenShoes = [
    "https://cdn.shopify.com/s/files/1/0143/1552/0054/products/551-6924_2_360x.jpg?v=1604297677",
    "https://cdn.shopify.com/s/files/1/0143/1552/0054/products/589-5159_2_360x.jpg?v=1604298326",
    "https://cdn.shopify.com/s/files/1/0143/1552/0054/products/551-3402-_2_360x.jpg?v=1600780074"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Shoe Store",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Promotions!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              promoCard(Colors.blue, "Discover the Nike Collection", "20%", promoBannerImgUrl[0]),
              SizedBox(height:10.0,),
              Text(
                "Men Shoes!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                height: 210.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // custom widget for product card
                    productCard(menShoes[0], "Bata Shoe", "Rs.100"),
                    productCard(menShoes[1], "Bata Shoe", "Rs.100"),
                    productCard(menShoes[2], "Bata Shoe", "Rs.100"),
                    productCard(menShoes[0], "Bata Shoe", "Rs.100"),
                    productCard(menShoes[1], "Bata Shoe", "Rs.100"),
                    productCard(menShoes[2], "Bata Shoe", "Rs.100"),
                  ],
                ),
              ),
              Text(
                "Female Shoes!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                height: 210.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // custom widget for product card
                    productCard(womenShoes[0], "Bata Shoe", "Rs.100"),
                    productCard(womenShoes[1], "Bata Shoe", "Rs.100"),
                    productCard(womenShoes[2], "Bata Shoe", "Rs.100"),
                    productCard(womenShoes[0], "Bata Shoe", "Rs.100"),
                    productCard(womenShoes[1], "Bata Shoe", "Rs.100"),
                    productCard(womenShoes[2], "Bata Shoe", "Rs.100"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red[500],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),title: Text("Favorite")),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),title: Text("Cart")),
          BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("Profile")),
        ],
      ),
    );
  }
}
