import 'package:flutter/material.dart';
import './bottom_tabs.dart';
import './sales_form.dart';
class SalesScreen extends StatefulWidget {
  @override
  _SalesScreenState createState() => _SalesScreenState();
   static const routeName='sales-screen';
}

class _SalesScreenState extends State<SalesScreen> {
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
                      Navigator.of(context).pushNamed(SalesForm.routeName);
                    }
                  ),
                
              ),
    //   body: StreamBuilder(
    //   stream: FirebaseFirestore.instance.collection('projects').snapshots(),
    //   builder: (ctx, streamSnapshot) {
    //     if (streamSnapshot.connectionState == ConnectionState.waiting) {
    //       return Center(
    //         child: CircularProgressIndicator(
    //           backgroundColor: Colors.black,
    //         ),
    //       );
    //     }
    //     final userData = streamSnapshot.data;
    //     print(userData);
    //     return ListView.builder(
    //         itemCount: userData.docs.length,
    //         itemBuilder: (ctx, index) {
    //           final doc = userData.docs[index];
    //           print(doc["title"]);
    //           return Padding(
    //             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    //             child: Container(
    //               width: 6,
    //               padding: EdgeInsets.all(10),
    //               decoration: BoxDecoration(
    //                   border: Border.all(color: Colors.grey[700]),
    //                   borderRadius: BorderRadius.circular(10),
    //                   color: Colors.white), //Colors.grey[300]),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 mainAxisSize: MainAxisSize.min,
    //                 children: [
    //                   ListTile(
    //                     title: Text(
    //                       doc["title"],
    //                       //plist[index]["title"],
    //                       style: TextStyle(
    //                           fontWeight: FontWeight.bold,
    //                           fontSize: 24,
    //                           color: Colors.black),
    //                     ),
    //                     subtitle: Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         Row(
    //                           children: [
    //                             Text(
    //                               "Owner -",
    //                               textAlign: TextAlign.center,
    //                               style: TextStyle(
    //                                   fontSize: 16, color: kPrimaryColor),
    //                             ),
    //                             Text(
    //                               " ${doc["started_by"]}",
    //                               textAlign: TextAlign.center,
    //                               style: TextStyle(
    //                                   fontWeight: FontWeight.bold,
    //                                   fontSize: 16,
    //                                   color: Colors.grey[700]),
    //                             ),
    //                           ],
    //                         ),
    //                         Divider(thickness: 2, color: Colors.black),
    //                         Padding(
    //                           padding: const EdgeInsets.only(bottom: 4),
    //                           child: Row(
    //                             children: [
    //                               Text(
    //                                 "Members : ",
    //                                 style: TextStyle(
    //                                     fontWeight: FontWeight.bold,
    //                                     fontSize: 17,
    //                                     color: kPrimaryColor),
    //                               ),
    //                               Text(
    //                                 "${doc["members_enrolled"]}/${doc["members"]}",
    //                                 style: TextStyle(
    //                                     fontWeight: FontWeight.bold,
    //                                     fontSize: 17,
    //                                     color: Colors.black),
    //                               ),
    //                             ],
    //                           ),
    //                         ),
    //                         Padding(
    //                           padding: const EdgeInsets.only(bottom: 4),
    //                           child: Text(
    //                             "${doc["description"]}",
    //                             style:
    //                                 TextStyle(fontSize: 18, color: textColor),
    //                             overflow: TextOverflow.ellipsis,
    //                             maxLines: 2,
    //                           ),
    //                         ),
    //                         Align(
    //                           alignment: Alignment.bottomLeft,
    //                           child: Text(
    //                             doc["tags"].toString(),
    //                             style: TextStyle(fontSize: 18,color: Colors.black,fontStyle: FontStyle.italic),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                     trailing: Container(
    //                         width: 90,
    //                         decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.circular(5),
    //                             border: Border.all(color: Colors.black)),
    //                         child: Row(
    //                             mainAxisAlignment: MainAxisAlignment.center,
    //                             children: [
    //                               Icon(
    //                                 Icons.star_border,
    //                                 color: Colors.yellow,
    //                               ),
    //                               Text(
    //                                 "Star",
    //                                 style: TextStyle(fontSize: 20),
    //                               )
    //                             ])),
        
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           );
    //         });
    //   },
    // ),
          bottomNavigationBar: BottomTabs(1),
          );
  }
}
