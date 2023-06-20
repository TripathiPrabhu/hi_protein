import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  static const routeName = 'SigninScreen';


  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          const Center(child: CircleAvatar(
            backgroundImage: AssetImage('images/hi protean.jpg'),
            radius: 45,
            child: Text('Hi-Protean',
            ),
          ),),
          const Text('Hi-Protean',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
            letterSpacing: 2
          ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text('Sign In',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.black87,
                    letterSpacing: 1
                ),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text('Hi there! Nice to see you again',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                    letterSpacing: 1
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'example@email.com',
               // hintStyle: TextStyle(color: Colors.red),
                labelText:  'Email',
               labelStyle: TextStyle(color: Colors.red),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 3, color: Colors.redAccent),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye),
                hintText: '..........',
                // hintStyle: TextStyle(color: Colors.red),
                labelText:  'Password',
                labelStyle: TextStyle(color: Colors.red),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 3, color: Colors.redAccent),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 60, left: 16,right: 16),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, 'HomePage');
              },
              child: Container(
                height: 55,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.red
                ),
                child: const Center(child: Text('Sign in',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)),
              ),
            ),
          )
          
        ],
      ),
    ));
  }
}
