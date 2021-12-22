import 'package:flutter/material.dart';
import 'constants.dart';
import 'home_screen.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';
import 'package:smat_traffic3/register_screen.dart';

class register_screen extends StatelessWidget {
  const register_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Create new account to get started.",
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'four names',
                            labelText: 'Name *',
                          ),
                          onSaved: (String? value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          validator: (String? value) {
                            return (value != null && value.contains('@'))
                                ? 'Do not use the @ char.'
                                : null;
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '',
                            labelText: 'car identity number *',
                          ),
                          onSaved: (String? value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          validator: (String? value) {
                            return (value != null && value.contains('@'))
                                ? 'Do not use the @ char.'
                                : null;
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            //icon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                            hintText: '',
                            labelText: 'phone number *',
                          ),
                          onSaved: (String? value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          validator: (String? value) {
                            return (value != null &&
                                    value.contains('@,/,*,-,(,+'))
                                ? 'Do not use the @ / * - +  char.'
                                : null;
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            //icon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                            hintText: '',
                            labelText: 'Email *',
                          ),
                          onSaved: (String? value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          validator: (String? value) {
                            return (value != null &&
                                    value.contains('/,*,-,(,+'))
                                ? 'Do not use the  / * - +  char.'
                                : null;
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.remove_red_eye),
                            hintText: 'at least 7 letters ',
                            labelText: 'Password *',
                          ),
                          onSaved: (String? value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          validator: (String? value) {
                            return (value != null && value.contains('@'))
                                ? 'Do not use the @ char.'
                                : null;
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        SizedBox(
                          height: 60,
                          width: double.infinity,
                          child: RaisedButton(
                              onPressed: () {
                                //Navigator.of(context).pushNamed('login');
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              child: Text(
                                'Sign UP',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    //required Key key,
    required this.hintText,
    required this.inputType,
  }) /*: super(key: key)*/;
  final String hintText;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        style: kBodyText.copyWith(color: Colors.white),
        keyboardType: inputType,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20),
          hintText: hintText,
          hintStyle: kBodyText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}
