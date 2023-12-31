import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget singleProduct() {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            height: 300,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.amber.shade200,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 200,
                  child: ClipRRect(
                    child: Image.network(
                        "https://akm-img-a-in.tosshub.com/indiatoday/images/story/201511/carrots-story_647_111915085532.jpg?VersionId=5JlV6qdtYdqWNSgVQxqbgb.4kly6dYf8&size=690:388"),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, top: 20, bottom: 10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text("Fresh Carrots"),
                          Text("50\$/50Gram"),
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Text("50grams"),
                            Icon(Icons.arrow_drop_down)
                          ],
                        )),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.remove),
                          Text("1"),
                          Icon(Icons.add)
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
                      singleProduct(),
                      singleProduct(),
                      singleProduct(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
