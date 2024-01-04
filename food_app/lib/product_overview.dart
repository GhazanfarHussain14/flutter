import 'package:flutter/material.dart';

class ProductReview extends StatefulWidget {
  final String productImage;
  const ProductReview(this.productImage, {super.key});

  @override
  State<ProductReview> createState() => _ProductReviewState();
}

enum Radiovalues { checked, unchecked }

Radiovalues val = Radiovalues.unchecked;

class _ProductReviewState extends State<ProductReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Review"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("Fresh Basil")),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("50\$")),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: Image.network(
              widget.productImage,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text("Available Option"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Radio(
                    value: val,
                    groupValue: val,
                    onChanged: (valu) {
                      setState(() {
                        val = valu!;
                      });
                    }),
              ),
              Text("50\$"),
              Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.yellow),
                      borderRadius: BorderRadius.circular(
                        10,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.add), Text("Add")],
                  ))
            ],
          )
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
              child: Container(
            height: 50,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.favorite), Text("Add to WishList")],
            ),
          )),
          Expanded(
              child: Container(
            height: 50,
            color: Colors.yellow,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.shopping_cart), Text("Go to Cart")],
            ),
          ))
        ],
      ),
    );
  }
}
