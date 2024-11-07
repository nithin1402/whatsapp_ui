import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text("WhatsApp",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 29),),
    ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ContainerDesign()
            ],
          ),
        ),
    ),
    );
  }
}

ContainerDesign () {
  List<Map<dynamic, dynamic>> details = [
    {
      "name": "Anna",
      "message": "Hi                                    ",
      "time": "8:15 AM",
      "inread": "1"
    },
    {
      "name": "John",
      "message": "See you later.                  ",
      "time": "9:45 AM",
      "inread":"1"
    },
    {
      "name": "Lucy",
      "message": "How's it going?             ",
      "time": "10:00 AM",
      "inread": "1"
    },
    {
      "name": "Mark",
      "message": "bye                                  ",
      "time": "11:32 PM",
      "inread": "1"
    },
    {
      "name": "Zara",
      "message": "Let's meet up!                ",
      "time": "12:00 PM",
      "inread": "1"
    },
    {
      "name": "Liam",
      "message": "What time is the sale?    ",
      "time": "2:45 PM",
      "inread": "1"
    },
    {
      "name": "Ella",
      "message": "Hi                                       ",
      "time": "4:30 PM",
      "inread": "1"
    },
    {
      "name": "Ryan",
      "message": "On my way.                       ",
      "time": "5:10 PM",
      "inread": "1"
    },
    {
      "name": "Maya",
      "message": "ok                                       ",
      "time": "6:20 PM",
      "inread": "1"
    },
    {
      "name": "Owen",
      "message": "Thanks for the help!         ",
      "time": "7:45 PM",
      "inread": "1"
    }
  ];
  return Padding(
    padding: const EdgeInsets.all(1.0),
    child: Column(

      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: TextField(
              decoration: InputDecoration(
                  hintText: "  Ask Meta AI or Search"
              ),
            ),
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.5)
            ),
          ),
        ),
        SizedBox(height: 11,),
        Column(
          children:details.map((element){
            return  Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.all(10),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.black.withOpacity(0.5)
                      ),
                      child: Center(child: Icon(Icons.person,color: Colors.white,size: 28,))),
                  SizedBox(
                    width: 2,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(element['name'],style: TextStyle(fontSize: 20),),
                      Text(element['message'])
                    ],
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 5,),
                      Text(element['time']),
                      Container(
                          margin: EdgeInsets.all(10),
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.green
                          ),
                          child: Center(child: Text(element['inread'],style: TextStyle(color: Colors.white),))),
                    ],
                  ),

                ],
              ),
              height: 85,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15)
              ),
            );

          }).toList(),

        ),
        SizedBox(
          height: 11,
        ),
      ],

    ),
  );
}