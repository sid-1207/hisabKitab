import 'package:flutter/material.dart';
import './bottom_tabs.dart';

class AnalyticsScreen extends StatefulWidget {
  @override
  _AnalyticsScreenState createState() => _AnalyticsScreenState();
  static const routeName = 'analytics-screen';
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(child: 
      Center(child: 
      Text("Analytics")
      )
      ),
      bottomNavigationBar: BottomTabs(0),
      );
  }
}
