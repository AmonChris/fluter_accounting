import 'package:flutter/material.dart';

class AcccountingList extends StatelessWidget {

  Widget Accounting(Icon icon, name, price){
    return Container(
      height: 60,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 1, color: Color(0xffe5e5e5)))
//              border: Border.all(color: Colors.grey,width: 0.5),

//              borderRadius: BorderRadius.circular(5),
      ),
      child: new Column(
        children: <Widget>[
          Container(
            alignment: Alignment(-0.9, 1),
            child: Text(
              "2020年1月12日 星期日",
              style: TextStyle(fontSize: 8, color: Colors.black45),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: <Widget>[
                      icon,
                      Text(
                        name,
                        style: TextStyle(fontSize: 24),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  "¥ " + price,
                  style: TextStyle(
                      fontSize: 24, color: Colors.deepOrangeAccent),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Accounting(Icon(Icons.access_alarms), "人情 - 请客", "7.00"),
          Accounting(Icon(Icons.access_alarms), "人情 - 请客", "7.00"),
          Accounting(Icon(Icons.access_alarms), "人情 - 请客", "7.00"),
          Accounting(Icon(Icons.access_alarms), "人情 - 请客", "7.00"),
          Accounting(Icon(Icons.access_alarms), "人情 - 请客", "7.00"),
          Accounting(Icon(Icons.access_alarms), "人情 - 请客", "7.00"),
        ],
      ),
    );
  }
}
