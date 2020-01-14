import 'package:flutter/material.dart';
import 'package:flutter_accounting/home/add_income_bill_page.dart';
import 'package:flutter_accounting/home/add_expend_bill_page.dart';

class AddBillPage extends StatefulWidget {
  _AddBillPageState createState() => new _AddBillPageState();
}

class _AddBillPageState extends State<AddBillPage>
    with TickerProviderStateMixin {
  TabController _tabController; //需要定义一个Controller
  List tabs = ["支出", "收入"];
  List tabPages = <Widget>[AddExpendBillPage(), AddIncomeBillPage()];

  @override
  void initState() {
    super.initState();
    // 创建Controller
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs.map((e) => Tab(text: e)).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabPages,
      ),
    );
  }
}
