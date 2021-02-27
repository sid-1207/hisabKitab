import 'package:flutter/material.dart';
import './bottom_tabs.dart';
class PurchaseScreen extends StatefulWidget {
  @override
  _PurchaseScreenState createState() => _PurchaseScreenState();
   static const routeName='purchase-screen';
}

class _PurchaseScreenState extends State<PurchaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
         floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: Container(
                decoration: BoxDecoration(border: Border.all(),color: Colors.white,borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width * 0.5,
                child:  FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    child: Text(
                      "ADD NEW RECORD",
                      style: TextStyle(color: Colors.orange),
                    ),
                    onPressed: (){
                      //Navigator.of(context).pushNamed(LoginUser.routeName);
                    }
                  ),
                
              ),
      body: Container(
        child: Center(child: Text("Purchase")
        )
        ),
        bottomNavigationBar: BottomTabs(2),
        );
  }
}
