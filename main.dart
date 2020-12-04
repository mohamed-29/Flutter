import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double ConH = height*0.7;
    double ConW = width*0.9;
    double circleW = (ConH-25)/4;
    return Scaffold(
      body:
     Container(
            color: Color(0xff303A46),
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                    width: width,
                    height: height*0.25,
                      child: Center(child: Text("helllllloowwww")),
                      color:null,
                    ),
                    Container(
                      width: width,
                      height: height*0.75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        color:Color(0xffD6E9FF),
                      ),
                      child: Center(
                        child: Container(
                          height: ConH,
                          width: ConW,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: ConH/5,
                                width: ConW-5,
                                child: Center(
                                  child: BootOn("/"),
                                ),
                              ),
                              Container(
                                height: ConH/5,
                                width: ConW-5,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      BootOn("7"),
                                      BootOn("8"),
                                      BootOn("9"),
                                      BootOn("*"),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: ConH/5,
                                width: ConW-5,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      BootOn("4"),
                                      BootOn("5"),
                                      BootOn("6"),
                                      BootOn("-"),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: ConH/5,
                                width: ConW-5,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      BootOn("1"),
                                      BootOn("2"),
                                      BootOn("3"),
                                      BootOn("+"),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: ConH/5,
                                width: ConW-5,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      BootOn("0"),
                                      BootOn("="),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                    ),
                      )
                    )],
                ),
              ],
            ),
        ),
    );
  }
}

class BootOn extends StatelessWidget {
  var name;

  BootOn(this.name);

  get circleW => circleW;


  @override
  Widget build(BuildContext context) {

    return
    SizedBox(
      height:80,
      width: 80,
      child:FlatButton(
        child: Text("${name}"),
        onPressed: (){print("A7a");},
        color: Color(0xff455566),
        splashColor: Color(0xffeaf4ff),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(80))
        ),
      ) ,
    );

  }
}
