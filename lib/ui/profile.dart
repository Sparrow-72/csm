import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 40, bottom: 20),
              child: CircleAvatar(
                backgroundColor: Colors.blue[900],
                radius: 85,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/pf_img.jpg'),
                  radius: 80,
                ),
              ),
            ),
            Text(
              'Chris Morris',
              textAlign: TextAlign.center,
              style: GoogleFonts.quicksand(
                  fontSize: 44,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue[900]),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.lightBlue[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(42),
                    topRight: Radius.circular(42),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Text(
                    'If you need an emergency locksmith, then call Chris at CSM Security Locksmiths on 07894 301499 for a professional, fast and reliable locksmith service. We know how stressful and frustrating it can be when your locked-out of your home, or business premises. So we pride ourselves on delivering the best service for all your locksmith needs. We also cover other towns and villages throughout Hertfordshire, Bedfordshire, Buckinghamshire & Northamptonshire. CSM Security Locksmiths also specialise in intruder alarm systems.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
