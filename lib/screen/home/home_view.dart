import 'package:flutter/material.dart';
import 'package:manager_money_wedding/data/wedding_item_data.dart';
import 'package:manager_money_wedding/screen/home/home_contract.dart';
import 'package:manager_money_wedding/screen/home/home_presenter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> implements HomeView {
  HomePresenter _presenter;

  List<WeddingItem> _weddingItemList;
  bool _isLoading;

  _HomeScreenState() {
    _presenter = HomePresenterImpl(this);
  }

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    _presenter.loadWeddingItemList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _isLoading
            ? Center(child: CircularProgressIndicator())
            : buildContent(context));
  }

  @override
  Widget buildContent(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            _buildListViewItem(_weddingItemList[index]),
            Divider()
          ],
        );
      },
      itemCount: _weddingItemList.length,
    );
  }

  @override
  void onLoadWeddingError() {
    setState(() {
      _isLoading = false;
      _weddingItemList = [];
    });
  }

  @override
  void onLoadWeddingListComplete(List<WeddingItem> weddingItems) {
    setState(() {
      _isLoading = false;
      _weddingItemList = weddingItems;
    });
  }

  Widget _buildListViewItem(WeddingItem weddingItem) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
                minRadius: 25.0, child: Text('${weddingItem.name[0]}')),
          ),
          Container(
            margin: EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: Text('${weddingItem.name}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.cyan[800]))),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: Text('${weddingItem.money}',
                        style:
                            TextStyle(fontSize: 18.0, color: Colors.red[400]))),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: Text('${weddingItem.time}',
                        style: TextStyle(
                            fontSize: 16.0, color: Colors.grey[500]))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
