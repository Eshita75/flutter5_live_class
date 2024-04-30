// Material App| Scaffold | Text|Center|center|Image|RichText
import 'package:flutter/material.dart';

main() {
  runApp(MyApp() /*create instance of MyApp class*/);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // use direct instance of class just constuctor but not use MaterialApp mat = MaterialApp();
      title: 'Hello World',
      home: Home(), //create instance of Home class
    );
  }
}

class Home extends StatelessWidget {
  List<String> studentList = [
    'eshita',
    'sristy',
    'mamun',
    'joyi'
  ];
  @override
  Widget build(BuildContext context) {
    //Write whatever you want to show in screen
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Home Screen", style: TextStyle(color: Colors.black),),//title area
        leading: Icon(Icons.home_filled, color: Colors.black,),
      ),
      body:

      // SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //       Text('hi'),
      //     ],
      //   ),
      // ),

      /*ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
          Text('Hello World'),
        ],
      )*/

      /*ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
                  return Text(
                    '${index + 1}',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
                  );
                })*/

      /*ListView.builder(
          itemCount: studentList.length,
          itemBuilder:(context, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(studentList[index], style: TextStyle(fontSize: 24),),
            );
          })*/

      /*ListView.separated(
          itemCount: studentList.length,
          itemBuilder:(context, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(studentList[index], style: TextStyle(fontSize: 24),),
            );
          },
        separatorBuilder: (context, index){
            return Divider(
              height: 30,
              color: Colors.deepOrange,
              thickness: 3,
              endIndent: 16,
              indent: 32,
            );
        },
      )*/


      /*GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: [
          Text('1'),
          Text('3'),
          Text('4'),
          Text('5'),
          Text('6'),
        ],
      )*/

      SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              primary: false,
              itemCount: studentList.length,
              itemBuilder:(context, index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(studentList[index], style: TextStyle(fontSize: 24),),
                );
              },
              separatorBuilder: (context, index){
                return Divider(
                  height: 40,
                  color: Colors.deepOrange,
                  thickness: 3,
                  endIndent: 16,
                  indent: 32,
                );
              },
            ),

            GridView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: 100,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 2,
                    crossAxisSpacing: 10, mainAxisSpacing: 10),
                itemBuilder: (context, index){
                return Column(
                  children: [
                    Text('Roll - ${index+1}'),
                    //Text(studentList[index])
                  ],
                );
                },
            ),
          ],
        ),
      )
    );
  }
}
