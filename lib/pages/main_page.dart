import 'package:flutter/material.dart';
import 'package:flutter_getdrool_by_codiant/pages/order_page.dart';
import 'package:flutter_getdrool_by_codiant/pages/profile_page.dart';
import 'package:flutter_getdrool_by_codiant/pages/search_page.dart';
import 'package:flutter_getdrool_by_codiant/utils/colors.dart';
import 'package:flutter_getdrool_by_codiant/utils/constant.dart';
import 'package:flutter_getdrool_by_codiant/utils/icons.dart';
import 'package:flutter_svg/svg.dart';

import 'home_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedMenu = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      height: double.infinity,
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              tabLayout(context),
              _selectedMenu == Constant.MENU_HOME
                  ? HomePage()
                  : _selectedMenu == Constant.MENU_PROFILE
                      ? ProfilePage()
                      : _selectedMenu == Constant.MENU_SEARCH
                          ? SearchPage()
                          : _selectedMenu == Constant.MENU_ORDER
                              ? OrderPage()
                              : Container(),
            ],
          ),
        ),
      ),
    );
  }

  Widget tabLayout(BuildContext context) {
    return Container(
      color: AppColor.white,
      padding: EdgeInsets.only(top: 10, bottom: 5),
      child: Row(
        children: <Widget>[
          Expanded(
              child: InkWell(
                  onTap: () {
                    setState(() {
                      _selectedMenu = Constant.MENU_HOME;
                    });
                  },
                  child: Container(
                      child: Align(
                    alignment: Alignment.center,
                    child: tabItemView(
                        AppIcons.icHome, "Home", Constant.MENU_HOME),
                  )))),
          Expanded(
              child: InkWell(
            onTap: () {
              setState(() {
                _selectedMenu = Constant.MENU_SEARCH;
              });
            },
            child: Container(
                child: Align(
              alignment: Alignment.center,
              child: tabItemView(
                  AppIcons.icSearch, "Search", Constant.MENU_SEARCH),
            )),
          )),
          Expanded(
              child: InkWell(
                  onTap: () {
                    setState(() {
                      _selectedMenu = Constant.MENU_ORDER;
                    });
                  },
                  child: Container(
                      child: Align(
                    alignment: Alignment.center,
                    child: tabItemView(
                        AppIcons.icOrder, "Order", Constant.MENU_ORDER),
                  )))),
          Expanded(
              child: InkWell(
                  onTap: () {
                    setState(() {
                      _selectedMenu = Constant.MENU_PROFILE;
                    });
                  },
                  child: Container(
                      child: Align(
                    alignment: Alignment.center,
                    child: tabItemView(
                        AppIcons.icProfile, "Profile", Constant.MENU_PROFILE),
                  )))),
        ],
      ),
    );
  }

  Widget tabItemView(iconName, label, index) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            iconName,
            color: _selectedMenu == index ? AppColor.green : AppColor.gry,
            height: 20,
            width: 20,
          ),
          Container(
            margin: EdgeInsets.only(top: 3),
            child: Text(
              label,
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 12,
                  color:
                      _selectedMenu == index ? AppColor.green : AppColor.gry),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            height: 3,
            width: MediaQuery.of(context).size.width / 7,
            color: _selectedMenu == index ? AppColor.green : Colors.transparent,
          )
        ],
      ),
    );
  }
}
