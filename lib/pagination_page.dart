import 'package:flutter/material.dart';

class ListViewPaginate extends StatefulWidget {
  @override
  ListViewPaginateState createState() {
    return new ListViewPaginateState();
  }
}

class ListViewPaginateState extends State<ListViewPaginate> {
  static final List<int> _listData = List<int>.generate(1000, (i) => i+1);
  ScrollController _scrollController = ScrollController();

  int _listOffset = 0;
  int _listLimit = 10;
  bool _isLoading = false;

  List<int> _dataForListView = _listData.sublist(0, 30);

  _scrollListener() {
    print("load");
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      setState(() {
        _isLoading = true;
         _dataForListView
            ..addAll(
                List<int>.from(_listData.sublist(30, 60)));
        _isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          controller: _scrollController,
          padding: EdgeInsets.all(8.0),
          children: _dataForListView
              .map((data) => ListTile(title: Text("Item $data")))
              .toList()
            ..add(ListTile(
                title: _isLoading
                    ? CircularProgressIndicator()
                    : SizedBox()))),
    );
  }
}