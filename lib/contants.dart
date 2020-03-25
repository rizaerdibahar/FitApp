import 'package:flutter/material.dart';

const kButtonColorRed = Color(0xFFE41515);
const kButtonColorGrey = Color(0xFF424242);
const kButtonColorPurple = Color(0xFF893796);
const kActiveCardColor = Color(0XFF2884DA);
const kInActiveCardColor = Color(0XFFFFFFFF);
const kButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20.0,
  fontFamily: "Rajdhani",
);

final textController = TextEditingController();
const kLabelTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20.0,
  fontFamily: "Rajdhani",
  fontWeight: FontWeight.bold,
);
const kBigLabelTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 30.0,
  fontFamily: "Rajdhani",
  fontWeight: FontWeight.bold,
);

class WelcomePageButton extends StatelessWidget {
  WelcomePageButton(
      {@required this.buttonTitle,
      @required this.click,
      @required this.buttonColor});
  final String buttonTitle;
  final Function click;
  final Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: click,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        color: buttonColor,
        child: ListTile(
          title: Text(
            buttonTitle,
            style: TextStyle(
                color: Colors.white, fontSize: 20.0, fontFamily: 'Rajdhani'),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class kMiniChooseButton extends StatelessWidget {
  kMiniChooseButton(
      {@required this.buttonTitle,
      @required this.click,
      @required this.TextColor,
      @required this.buttonColor});
  final String buttonTitle;
  final Function click;
  final Color buttonColor;
  final Color TextColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: click,
      child: Card(
        margin: EdgeInsets.all(30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        color: buttonColor,
        child: ListTile(
          title: Text(
            buttonTitle,
            style: TextStyle(
                color: TextColor, fontSize: 20.0, fontFamily: 'Rajdhani'),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class kchoseeButton extends StatelessWidget {
  kchoseeButton({
    @required this.buttonTitle,
    @required this.click,
    @required this.buttonColor,
    @required this.TextColor,
  });
  final String buttonTitle;
  final Function click;
  final Color buttonColor;
  final Color TextColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: click,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 150.0),
        color: buttonColor,
        child: ListTile(
          title: Text(
            buttonTitle,
            style: TextStyle(
                color: TextColor, fontSize: 20.0, fontFamily: 'Rajdhani'),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class TextField_CreateAccount extends StatelessWidget {
  TextField_CreateAccount(
      {@required this.fildText,
      @required this.TextFieldColor,
      @required this.marginTop,
      @required this.textSEE});
  final Color TextFieldColor;
  final String fildText;
  final double marginTop;
  final bool textSEE;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 40.0,
      margin: EdgeInsets.only(
        top: marginTop,
      ),
      child: TextField(
        obscureText: textSEE,
        decoration: InputDecoration(
            fillColor: TextFieldColor,
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            hintText: fildText,
            hintStyle: TextStyle(color: Colors.black)),
      ),
    );
  }
}

class my_Iconbutton extends StatelessWidget {
  @override
  my_Iconbutton({@required this.click});
  final Function click;
  Widget build(BuildContext context) {
    return Ink(
      decoration: const ShapeDecoration(
        color: Colors.transparent,
        shape: CircleBorder(),
      ),
      child: IconButton(
        icon: Image.asset('images/back_icon.png'),
        color: Colors.white,
        onPressed: click,
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.renk, @required this.cardChild, @required this.onPress});
  Color renk;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: renk,
        ),
      ),
    );
  }
}
