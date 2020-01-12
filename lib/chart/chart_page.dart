import 'package:flutter/material.dart';

class ChartPage extends StatefulWidget {
  @override
  _ChartPageState createState() => new _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
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
                      new Align(
                        alignment: Alignment(-0.9,0),
                        child:new Text('本月支出（元）', style: new TextStyle(color: Colors.white70),),
                      ),
                      new Align(
                        alignment: Alignment(-0.9,0),
                        child: new Text('羊756.35', style: new TextStyle(color: Colors.white, fontSize: 30),),
                      ),

                    ],
                  ),
                )
              ],
            )
          )
        ],
      ),
    );
  }
}
