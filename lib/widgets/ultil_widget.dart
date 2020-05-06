import 'package:flutter/material.dart';

class CustomMidButton extends StatelessWidget {
  final Function onPress;
  final String text;

  const CustomMidButton({
    Key key,
    this.onPress,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      width: 320,
      child: FloatingActionButton.extended(
        onPressed: onPress, //() {},
        label: Text(
          text, //'Chriss Moris',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

class ButtonSelector extends StatelessWidget {
  final Function onPress;
  final Color buttonColor;
  final Radius topRightRatius;
  final Radius topLeftRatius;
  final Radius bottomRightRatius;
  final Radius bottomLeftRatius;
  final IconData icon;
  final Color iconColor;
  final String text;
  final Color textColor;

  const ButtonSelector({
    Key key,
    this.onPress,
    this.buttonColor,
    this.topRightRatius,
    this.topLeftRatius,
    this.bottomRightRatius,
    this.bottomLeftRatius,
    this.icon,
    this.iconColor,
    this.text,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          height: 150,
          width: 150,
          child: Card(
            color: buttonColor, //Colors.lightGreen,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: topRightRatius, //Radius.circular(20),
                topLeft: topLeftRatius, //Radius.circular(120),
                bottomRight: bottomRightRatius, //Radius.circular(20),
                bottomLeft: bottomLeftRatius, //Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon, //Icons.message,
                  size: 40,
                  color: iconColor, //Colors.white,
                ),
                Text(
                  text, //'Text',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: textColor, //Colors.white,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
