import 'package:flutter/material.dart';

class intro_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[400],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(),
            Image.asset('images/logo2.png'),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('login');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                    'Get Started',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
