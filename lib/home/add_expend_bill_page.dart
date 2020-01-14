import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddExpendBillPage extends StatefulWidget {
  @override
  _AddExpendBillPageState createState() => new _AddExpendBillPageState();
}

class _AddExpendBillPageState extends State<AddExpendBillPage> {
  var text;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController.addListener((){
      //_textEditingController.text = "￥" + _textEditingController.text;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      color: Colors.black12,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Text(
                      "支出金额",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(right: 10),
                    child: TextField(
                      controller:_textEditingController,
                      style: TextStyle(fontSize: 24, color: Colors.deepOrangeAccent),
                      keyboardType: TextInputType.numberWithOptions(),
                      textAlign: TextAlign.end,
                      decoration: InputDecoration(
                        hintText: "¥ 0.00",
                        hintStyle: TextStyle(fontSize: 24, color: Colors.deepOrangeAccent),
                        border: InputBorder.none,
                      ),
                    ),
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
