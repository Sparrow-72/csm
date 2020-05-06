import 'package:csm_exp/ui/profile.dart';
import 'package:csm_exp/widgets/ultil_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class AppCard extends StatelessWidget {
  const AppCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/banner_img.jpg'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Text(
                'Please use the buttons below to contact us',
                textAlign: TextAlign.center,
                style: GoogleFonts.quicksand(
                    fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue[100],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ButtonSelector(
                          onPress: () => launch('tel:+447894 301499'),
                          buttonColor: Colors.lightGreen[300],
                          icon: Icons.message,
                          iconColor: Colors.white,
                          text: 'Text',
                          textColor: Colors.white,
                          topRightRatius: Radius.circular(20),
                          topLeftRatius: Radius.circular(120),
                          bottomRightRatius: Radius.circular(20),
                          bottomLeftRatius: Radius.circular(20),
                        ),
                        ButtonSelector(
                          onPress: () =>
                              launch('mailto:info@csmsecuritylocksmiths.uk'),
                          buttonColor: Colors.redAccent,
                          icon: Icons.email,
                          iconColor: Colors.white,
                          text: 'eMail',
                          textColor: Colors.white,
                          topRightRatius: Radius.circular(120),
                          topLeftRatius: Radius.circular(20),
                          bottomRightRatius: Radius.circular(20),
                          bottomLeftRatius: Radius.circular(20),
                        ),
                      ],
                    ),
                    CustomMidButton(
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(),
                          ),
                        );
                      },
                      text: 'Check Chriss Profile',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ButtonSelector(
                          onPress: () =>
                              launch('https://www.csmsecuritylocksmiths.uk'),
                          buttonColor: Colors.lightBlueAccent,
                          icon: Icons.vpn_lock,
                          iconColor: Colors.white,
                          text: 'Website',
                          textColor: Colors.white,
                          topRightRatius: Radius.circular(20),
                          topLeftRatius: Radius.circular(20),
                          bottomRightRatius: Radius.circular(20),
                          bottomLeftRatius: Radius.circular(120),
                        ),
                        ButtonSelector(
                          onPress: () => launch('tel:+447894 301499'),
                          buttonColor: Colors.white,
                          icon: Icons.phone_android,
                          iconColor: Colors.lightBlue,
                          text: 'Call Us',
                          textColor: Colors.lightBlue,
                          topRightRatius: Radius.circular(20),
                          topLeftRatius: Radius.circular(20),
                          bottomRightRatius: Radius.circular(120),
                          bottomLeftRatius: Radius.circular(20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
