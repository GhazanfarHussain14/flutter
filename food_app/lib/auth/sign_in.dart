import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_app/home_screen/home_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;
      // print("signed in " + user.displayName);

      return user;
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("backimage.jpg"), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 600,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(150, 255, 255, 255),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Sign in to continue",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Vegi",
                    style: TextStyle(
                        fontSize: 90,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          BoxShadow(blurRadius: 20, color: Colors.brown)
                        ]),
                  ),
                  // SignInButton(
                  //   Buttons.google,
                  //   text: "Sign up with Google",
                  //   onPressed: () {},
                  // ),
                  SignInButton(
                    Buttons.google,
                    text: "Sign up with Google",
                    onPressed: () async {
                      _googleSignUp().then((value) => Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(
                              builder: (context) => HomeScreen())));
                    },
                  ),
                  // Text("Google SigIn"),
                  Text("Apple Sign In"),
                  Text(
                      "By Signing in you are agreeing to our terms and policies.")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
