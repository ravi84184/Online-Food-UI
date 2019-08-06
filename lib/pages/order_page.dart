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
                      padding: EdgeInsets.only(top: 10, bottom: 10),
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
                      )),
                  Container(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Card(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                                  fontWeight: FontWeight.bold),
                                            ),
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
                                                    "Open 10AM-10PM, Jan 31,2018",
                                                    style: TextStyle(
                                                        fontFamily: 'Roboto',
                                                        color: AppColor.gry,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
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
