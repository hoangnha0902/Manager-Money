import 'package:flutter/material.dart';
import 'package:manager_money_wedding/screen/wedding_create/wedding_create_contract.dart';
import 'package:manager_money_wedding/strings.dart';

class WeddingCreateScreen extends StatefulWidget {
  @override
  _WeddingCreateScreenState createState() => _WeddingCreateScreenState();
}

class _WeddingCreateScreenState extends State<WeddingCreateScreen>
    implements WeddingCreateView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$titleCreateWeddingDialog'),
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Text('Tên đám cưới'),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment(0.5, 0.5),
                    height: 40.0,
                    margin: EdgeInsets.only(left: 16.0),
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                        border: Border.all(color: Colors.grey)),
                    child: TextField(
                      decoration: InputDecoration.collapsed(hintText: ''),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  flex: 5,
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Text('Tiền mừng cưới:'),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment(0.5, 0.5),
                    height: 40.0,
                    margin: EdgeInsets.only(left: 16.0, top: 16.0),
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                        border: Border.all(color: Colors.grey)),
                    child: TextField(
                      decoration: InputDecoration.collapsed(hintText: ''),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  flex: 5,
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('done');
        },
        child: Icon(Icons.done),
      ),
    );
  }
}
