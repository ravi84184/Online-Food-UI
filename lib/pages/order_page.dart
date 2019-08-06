import 'package:flutter/material.dart';
import 'package:flutter_getdrool_by_codiant/utils/colors.dart';
import 'package:flutter_getdrool_by_codiant/utils/icons.dart';
import 'package:flutter_svg/svg.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "YOUR ORDER",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          "ORDER HISTORY",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: AppColor.green),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Card(
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "Restaurant Name",
                                                style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 10),
                                                child: Row(
                                                  children: <Widget>[
                                                    SvgPicture.asset(
                                                      AppIcons.icClock,
                                                      color: AppColor.gry,
                                                      height: 15,
                                                      width: 15,
                                                    ),
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          left: 5),
                                                      child: Text(
                                                        "Open 10AM-10PM, Jan 31,2018",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Roboto',
                                                            color: AppColor.gry,
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 10, bottom: 20),
                                                child: Row(
                                                  children: <Widget>[
                                                    SvgPicture.asset(
                                                      AppIcons.icETA,
                                                      color: AppColor.gry,
                                                      height: 15,
                                                      width: 15,
                                                    ),
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          left: 5),
                                                      child: Text(
                                                        "ETA 10:00 min",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Roboto',
                                                            color: AppColor.gry,
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                child: SvgPicture.asset(
                                                  AppIcons.icMotorBike,
                                                  height: 50,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Expanded(
                                            flex: 3,
                                            child: Container(
                                              child: Text(
                                                "Total",
                                                style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    color: AppColor.black,
                                                    fontSize: 17),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    "6 ITEMS",
                                                    style: TextStyle(
                                                        fontFamily: 'Roboto',
                                                        color: AppColor.green,
                                                        fontSize: 13),
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    " \$11.0",
                                                    style: TextStyle(
                                                        fontFamily: 'Roboto',
                                                        color: AppColor.black,
                                                        fontSize: 17),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
