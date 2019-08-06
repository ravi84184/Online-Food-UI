import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getdrool_by_codiant/utils/colors.dart';
import 'package:flutter_getdrool_by_codiant/utils/constant.dart';
import 'package:flutter_getdrool_by_codiant/utils/icons.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  static final List<String> imgList = [
    AppIcons.slider1,
    AppIcons.slider2,
    AppIcons.slider3,
    AppIcons.slider4,
  ];
  final List child = map<Widget>(
    imgList,
        (index, i) {
      return Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(children: <Widget>[
            Image.asset(i, fit: BoxFit.cover, width: 1000.0),
          ]),
        ),
      );
    },
  ).toList();

  static List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CarouselSlider(
            viewportFraction: 1.0,
            items: child,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            onPageChanged: (index) {
              setState(() {
                _current = index;
              });
            },
          ),
          nearByRes(context,"NEARBY RESTAURANTS(10)"),
          nearByRes(context,"POPULAR RESTAURANTS(22)")
        ],
      ),
    );
  }

  Widget nearByRes(BuildContext context,title) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 3),
            child: Text(
              title,
              style: TextStyle(
                  fontFamily: 'Roboto', fontSize: 17, color: AppColor.black),
            ),
          ),
          Container(
            height: 300,
            child: ListView.builder(itemCount: 10,scrollDirection: Axis.horizontal,shrinkWrap: true,itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width-50,
                child: Card(
                  elevation: 2,
                  child: Container(
                    padding:
                    EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 5),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Restaurant Name",
                              style: TextStyle(fontFamily: 'Roboto', fontSize: 17),
                            ),
                            Container(
                              child: Row(children: <Widget>[
                                SvgPicture.asset(
                                  AppIcons.icStar,
                                  color: AppColor.yellow,
                                  height: 15,
                                  width: 15,
                                ),
                                Card(
                                    color: AppColor.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                    child: Container(
                                        padding: EdgeInsets.only(
                                            left: 5, right: 5, top: 2, bottom: 2),
                                        child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                              "4.0",
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  color: AppColor.white),
                                            )))),
                              ]),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Restaurant Tag",
                            style: TextStyle(
                                fontFamily: 'Roboto', color: AppColor.gry),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  SvgPicture.asset(
                                    AppIcons.icClock,
                                    color: AppColor.gry,
                                    height: 15,
                                    width: 15,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      "Open 10AM-10PM",
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          color: AppColor.gry,
                                          fontSize: 10),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 5, right: 5),
                                    height: 15,
                                    width: 1,
                                    color: AppColor.gry,
                                  ),
                                  SvgPicture.asset(
                                    AppIcons.icETA,
                                    color: AppColor.gry,
                                    height: 15,
                                    width: 15,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      "ETA 20-30 min.",
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          color: AppColor.gry,
                                          fontSize: 10),
                                    ),
                                  ),
                                ],
                              ),
                              SvgPicture.asset(
                                AppIcons.icHeart,
                                color: AppColor.pink,
                                height: 15,
                                width: 15,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Card(
                                  child: Image.asset(
                                    AppIcons.food1,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                        mainAxisSize: MainAxisSize.max,
                                        children: <Widget>[
                                          Expanded(
                                              flex: 1,
                                              child: Card(
                                                  child: Image.asset(
                                                    AppIcons.food2,
                                                    fit: BoxFit.cover,
                                                  ))),
                                          Expanded(
                                              flex: 1,
                                              child: Card(
                                                  child: Image.asset(
                                                    AppIcons.food3,
                                                    fit: BoxFit.cover,
                                                  ))),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Card(
                                            child: Stack(
                                              children: <Widget>[
                                                Image.asset(
                                                  AppIcons.food4,
                                                  fit: BoxFit.cover,
                                                ),
                                                Container(
                                                  height: double.infinity,
                                                  width: double.infinity,
                                                  color: Colors.black.withOpacity(0.3),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "15 PHOTO",
                                                    style: TextStyle(
                                                        fontFamily: 'Roboto',
                                                        color: AppColor.white,
                                                        fontSize: 15),
                                                  ),
                                                )
                                              ],
                                            )))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
