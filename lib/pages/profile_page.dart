import 'package:flutter/material.dart';
import 'package:flutter_getdrool_by_codiant/utils/colors.dart';
import 'package:flutter_getdrool_by_codiant/utils/icons.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Stack(
                  alignment: Alignment.centerRight,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 100,
                      width: 100,
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage(AppIcons.food1),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Container(
                      child: ClipOval(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          color: AppColor.green,
                          child: SvgPicture.asset(
                            AppIcons.icEdit,
                            color: AppColor.white,
                            height: 12,
                            width: 12,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Text(
                  "Ravi Patel",
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 5,right: 2),
                        child: Icon(
                          Icons.email,
                          color: AppColor.green,
                          size: 15,
                        ),
                      ),
                      Text(
                        "demo@gmail.com",
                        style: TextStyle(fontFamily: 'Roboto', color: AppColor.gry),
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 5,right: 2),
                          child: Icon(
                            Icons.call,
                            color: AppColor.green,
                            size: 15,
                          )),
                      Text(
                        "7041384184",
                        style: TextStyle(fontFamily: 'Roboto', color: AppColor.gry),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 5,right: 2),
                        child: Icon(
                          Icons.location_on,
                          color: AppColor.green,
                          size: 15,
                        ),
                      ),
                      Text(
                        "Ahmedabad, Gujarat, India",
                        style: TextStyle(fontFamily: 'Roboto', color: AppColor.gry),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top:10),
          child: Card(
            elevation: 1,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: <Widget>[
                      menuWidgets(AppIcons.icPayment,"PAYMENT",Colors.blue),
                      menuWidgets(AppIcons.icHelp,"HELP",AppColor.green),
                      menuWidgets(AppIcons.icHeart1,"FAVORITE",AppColor.pink),
                    ],
                  ),
                ),
                Container(margin:EdgeInsets.only(left: 10,right: 10),height: 0.5,width: double.infinity,color: Colors.grey[300],),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: <Widget>[
                      menuWidgets(AppIcons.icNotification,"NOTIFICATION",AppColor.yellow),
                      menuWidgets(AppIcons.icSettings,"SETTINGS",Colors.blue),
                      menuWidgets(AppIcons.icLogout,"LOGOUT",AppColor.green),
                    ],
                  ),
                ),
              ],
            )
          ),
        )
      ],
    );
  }

  Widget menuWidgets(icon,label,color){
    return Expanded(child: Container(
      child: Column(
        children: <Widget>[
          SvgPicture.asset(
            icon,
            color: color,
            height: 20,
            width: 20,
          ),
          Text(
            label,
            style: TextStyle(
                fontFamily: 'Roboto',color: AppColor.gry),
          ),
        ],
      ),
    ));
  }
}
