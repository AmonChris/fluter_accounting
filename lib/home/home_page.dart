import 'package:flutter/material.dart';
import 'package:flutter_accounting/home/accounting_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      alignment: Alignment.topCenter,
      child: new Column(
        children: <Widget>[
          new Container(
              height: 200,
              width: double.maxFinite,
              color: Colors.blue,
              child: new Column(
                children: <Widget>[
                  // 占位
                  new Container(
                    height: 80,
                  ),
                  // 金额信息
                  new Container(
                    height: 120,
                    width: double.maxFinite,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 20,
                          alignment: Alignment(-0.9, 0),
                          child: new Text(
                            '本月支出（元）',
                            style: new TextStyle(color: Colors.white70),
                          ),
                        ),
                        new Container(
                          height: 60,
                          alignment: Alignment(-0.9, 0),
                          child: new Text(
                            '¥ 756.35',
                            style: new TextStyle(
                                color: Colors.white, fontSize: 30),
                          ),
                        ),
                        new Row(
                          children: <Widget>[
                            new Container(
                              height: 20,
                              padding: const EdgeInsets.only(left: 10),
                              child: new Text(
                                '本月收入',
                                style: new TextStyle(color: Colors.white70),
                              ),
                            ),
                            new Container(
                              height: 20,
                              padding: const EdgeInsets.only(left: 10),
                              child: new Text(
                                '暂无收入',
                                style: new TextStyle(color: Colors.white70),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )),
          new Expanded(
            child: new AcccountingList(),
          )
        ],
      ),
    );
  }
}
