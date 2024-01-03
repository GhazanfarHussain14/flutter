import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue,
      child: Column(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                ),
                Column(
                  children: [
                    Text("Welcome Guest"),
                    Container(
                      decoration: BoxDecoration(border: Border.all(width: 1)),
                      child: Text("Login"),
                    ),
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: 1,
          ),
          ListTile(leading: Icon(Icons.home), title: Text("Home")),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text("Shopping Cart"),
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text("Profile"),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifications"),
          ),
          ListTile(
            leading: Icon(Icons.rate_review),
            title: Text("Ratings and Review"),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("WishList"),
          ),
          ListTile(
            leading: Icon(Icons.check),
            title: Text("Compliant"),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("FAQs"),
          ),
        ],
      ),
    );
  }
}
