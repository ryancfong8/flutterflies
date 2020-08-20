// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Tasky', home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(''),
        //   backgroundColor: Colors.white,
        // ),
        // body: _buildSuggestions(),
        body: Column(
      children: [
        Container(
            margin: EdgeInsets.only(top: 78.96, bottom: 20.0),
            child: Image(
                image: NetworkImage(
                    'https://s3-alpha-sig.figma.com/img/f8eb/b413/bf0a18df687856c8affa8496834d54b2?Expires=1598227200&Signature=Oh6wyREdcsL7iaJfbcpo7JDsLIFHtipC0LMY~7ARlvJ5DGA6vMAqgDCqoVUhoTvYZ1tp2rAuSZlXgHUZNKFODDqOyBppn529poX8A0Eh1s5DRkqmhNIQz-hkM7qpXkdRzQgZqGhw~3vwYVr7tB0foGUv-n~5rbOPU25V6k2geqBeQpyfMy9ftxsG65oklIAsK0A71noaltgKidMu9u2gmOVFFz-y1BOrYEOmbXC~4jvBZyjiRKeZa0iIMFLqNbv7gpSRiqpt4Jlbyh4C8tJQkeNh4Qhcx~12p-QsIA7iI9tVDmysi~HU1KRtltqtBgusXpOFbRE7R6pA9ZA6VYpFGA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
                width: 375,
                height: 286.04)),
        Container(
            margin: EdgeInsets.only(bottom: 15.0),
            child: Text(
              'Tasky',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nunito Sans',
                  fontSize: 30),
            )),
        Container(
            margin: EdgeInsets.only(bottom: 15.0),
            child: Image(
              image: NetworkImage(
                  'https://s3-alpha-sig.figma.com/img/2e79/063d/89417f0bf4813189d9ec50e24cfc94ec?Expires=1598227200&Signature=MYzKB0mXFCh-eGIbZHRPSuAvjNeyUUBWdGO~3cLevz4gG8dsMd0bet6YEYzAgIWVcjLlfCBagZdQECJ1QZT4yk0emiU5bBZnyn51nnrlDrAJx0FcMmfzl3-mqNzpwg0PWuEoHy5z62Hi~toKyEqBv1DWzbl53f1QLEMX2XcLYXZkIhv06l4h-yRU7nLvWVaV-X3AkRf4VEriSqtrc-egi-TRX3IN2X0Aroy9WNdSHXrrtatpPaYnrKGGWWZMG~7pij7irBAzRaktlGjzfrKe~q9dFRrEVZBmdP6lb8CbIr1Q6fHw7rAvWl5Idgf-Z3~~~KgHaEa12sI0DDAR0k2TOw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
            )),
        Container(
            margin: EdgeInsets.only(bottom: 15.0),
            child: Text.rich(TextSpan(
                text: "Tasks made",
                style: TextStyle(fontSize: 22),
                children: <TextSpan>[
                  TextSpan(
                      text: " for people",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                ]))),
        Container(
            margin: EdgeInsets.only(bottom: 15.0),
            child: Text(
              'By People',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nunito Sans',
                  fontSize: 26),
            )),
        Container(
            margin: EdgeInsets.only(top: 25, bottom: 10.0),
            child: FlatButton(
              onPressed: () {
                navigateToSubPage(context);
              },
              textColor: Colors.white,
              color: Colors.blue[900],
              padding: const EdgeInsets.only(
                  top: 14.75, bottom: 12.25, left: 94.5, right: 94.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const Text('Get Started', style: TextStyle(fontSize: 18)),
            ))
      ],
    ));
  }
}

Future navigateToSubPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
}

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(""),
        //   backgroundColor: Colors.white,
        // ),
        body: Padding(
      padding: EdgeInsets.all(35.0),
      child: Column(children: [
        Container(
            margin: EdgeInsets.only(top: 78.96, bottom: 8.0),
            child: Row(children: <Widget>[
              Text(
                "Let's Sign You In",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nunito Sans',
                  fontSize: 30,
                ),
              ),
            ])),
        Row(children: <Widget>[
          Text(
            "Welcome back, you've been missed!",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontFamily: 'DM Sans',
              fontSize: 14,
              color: Color(0x171717).withOpacity(0.6),
            ),
          ),
        ]),
        Text(
          "Email",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontFamily: 'Nunito Sans',
            fontSize: 12,
            color: Color(0x8F92A1),
          ),
        ),
        TextField(
            obscureText: false,
            style: TextStyle(fontFamily: 'Nunito Sans', fontSize: 16),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Email",
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0x8F92A1))),
            )),
        Text(
          "Password",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontFamily: 'Nunito Sans',
            fontSize: 12,
            color: Color(0x8F92A1),
          ),
        ),
        TextField(
            obscureText: true,
            style: TextStyle(fontFamily: 'Nunito Sans', fontSize: 16),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Password",
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0x8F92A1))),
            )),
        Container(
            margin: EdgeInsets.only(top: 47, bottom: 21.96),
            child: FlatButton(
              onPressed: () {},
              textColor: Colors.white,
              color: Colors.blue[900],
              padding: const EdgeInsets.only(
                  top: 14.75, bottom: 12.25, left: 111.5, right: 117.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const Text('Sign In', style: TextStyle(fontSize: 18)),
            )),
        Text.rich(TextSpan(
            text: "Don't have an account? ",
            style: TextStyle(fontSize: 12),
            children: <TextSpan>[
              TextSpan(
                  text: "Sign Up",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
            ])),
        Container(
            margin: EdgeInsets.only(top: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text('Back',
                  style: TextStyle(
                      fontSize: 12, color: Color(0x171717).withOpacity(0.6))),
            ))
      ]),
    ));
  }
}
