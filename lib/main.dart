import 'package:flutter/material.dart';
import 'package:flutter_getdrool_by_codiant/pages/main_page.dart';
import 'package:flutter_getdrool_by_codiant/utils/colors.dart';
import 'package:flutter_getdrool_by_codiant/utils/icons.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Roboto"),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 30,
                    width: 3,
                    color: AppColor.yellowLite,
                    margin: EdgeInsets.only(right: 6),
                  ),
                  Text(
                    "Restaurant List",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: AppColor.black),
                  ),
                ],
              ),
              Container(
                width: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: SvgPicture.asset(
                          AppIcons.icLocation,
                          color: AppColor.black,
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: SvgPicture.asset(
                          AppIcons.icFilter,
                          color: AppColor.black,
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
      body: MainPage(),
    );
  }
}
