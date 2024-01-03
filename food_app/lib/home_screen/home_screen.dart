import 'package:flutter/material.dart';
import 'package:food_app/drawer.dart';
import 'package:food_app/product_overview.dart';
import 'package:food_app/single_product.dart';

class HomeScreen extends StatefulWidget {
  // final String productImg;
  // final String productName;
  // final Function onTap;
  // const HomeScreen(this.productImg, this.productName, this.onTap, {Key? key})
  //     : super(key: key);
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=1400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(50))),
                        child: Center(
                          child: Text(
                            "Vegi",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              shadows: [
                                Shadow(blurRadius: 20, color: Colors.white)
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "30% off",
                              style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    BoxShadow(
                                        color: Colors.black, blurRadius: 30)
                                  ]),
                            ),
                            Text(
                              "On all products",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  shadows: [
                                    BoxShadow(
                                        color: Colors.black, blurRadius: 30)
                                  ]),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Herbs seasoning"), Text("view all")],
              ),
            ),
            SingleChildScrollView(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SingleProduct(
                      "https://akm-img-a-in.tosshub.com/indiatoday/images/story/201511/carrots-story_647_111915085532.jpg?VersionId=5JlV6qdtYdqWNSgVQxqbgb.4kly6dYf8&size=690:388",
                      "Carrot",
                      () {},
                    ),
                    SingleProduct(
                        "data:image/jpeg;base64,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",
                        "Spinach",
                        () {}),
                    SingleProduct(
                        "data:image/jpeg;base64,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",
                        "Coriander",
                        () {}),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Fruits"), Text("View all")],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingleProduct(
                      "https://t4.ftcdn.net/jpg/00/61/19/53/240_F_61195341_rR4lMptEspj16GvOdmy0MaMznSRveh2M.jpg",
                      "Oranges",
                      () {}),
                  SingleProduct(
                      "https://t4.ftcdn.net/jpg/00/44/72/23/360_F_44722368_6jFsh6s5PRWV6Z0JH06zuuPUxW03boaX.jpg",
                      "Mangoes",
                      () {})
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
