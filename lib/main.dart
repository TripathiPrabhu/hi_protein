import 'package:flutter/material.dart';
import 'package:hi_protein/screens/home_page.dart';
import 'package:hi_protein/screens/sign_in_screen.dart';

void main(){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner:  false,

      initialRoute: SigninScreen.routeName ,
      routes: {
        SigninScreen.routeName: (context) => const SigninScreen(),
        HomePage.routeName: (context) => const HomePage()


      },



    );
  }
}
