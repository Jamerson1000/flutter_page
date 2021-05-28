import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  final backgroundColor, logo, backgroundImage, initState;

  const SplashPage(
      {Key key,
      this.backgroundColor,
      this.logo,
      this.backgroundImage,
      this.initState})
      : super(key: key);
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    widget.initState();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      body: Stack(
        children: [
          Container(
            height: h,
            width: w,
            child: widget.backgroundImage,
          ),
          Container(
            height: h,
            width: w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: w / 2,
                  child: widget.logo,
                ),
                Container(
                  margin: EdgeInsets.only(top: h / 20),
                  width: w / 20,
                  height: w / 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 1,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
