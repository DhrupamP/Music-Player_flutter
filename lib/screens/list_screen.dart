import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utilities/style.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: Text('Songs'),
        backgroundColor: kPrimaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            margin: EdgeInsets.fromLTRB(20, 5, 20, 2),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Image.network('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                  backgroundColor: kSecondaryColor,
                ),
                SizedBox(width: 20,),
                Text('Song1',style: TextStyle(color: Colors.white),)
              ],
            )

            ,),
          Container(
            decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            margin: EdgeInsets.fromLTRB(20, 5, 20, 2),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Image.network('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                  backgroundColor: kSecondaryColor,
                ),
                SizedBox(width: 20,),
                Text('Song2',style: TextStyle(color: Colors.white),)
              ],
            )

            ,),
          Container(
            decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            margin: EdgeInsets.fromLTRB(20, 5, 20, 2),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Image.network('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                  backgroundColor: kSecondaryColor,
                ),
                SizedBox(width: 20,),
                Text('Song3',style: TextStyle(color: Colors.white),)
              ],
            )

            ,)
        ],
      ),
    );
  }
}
