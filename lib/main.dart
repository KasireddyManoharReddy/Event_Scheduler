// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:event_scheduler/Event.dart';

void main()
{
  runApp(FirstApp());
}
class FirstApp extends StatefulWidget {
  const FirstApp({Key? key}) : super(key: key);

  @override
  State<FirstApp> createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  final List<Widget> _list=[
    Text(''),
  ];
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Event Scheduler'),
          backgroundColor: Colors.blue[600],

        ),
        backgroundColor: Colors.blue[300],
        body: ListView.builder(
          itemCount: _list.length,
          itemBuilder: ((context, index) => _list[index]),

        ),
        floatingActionButton: Builder(
            builder: (context) {
              return  FloatingActionButton(
                backgroundColor:Colors.redAccent ,
                child:Icon(Icons.add),
                onPressed: () async{
                  String NewText = await Navigator.of(context).push(MaterialPageRoute(builder:(context) => New_Event()));
                  setState(() => _list.add(Container(child: Text(NewText),
                      alignment: Alignment.centerLeft,decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10),color: Colors.white ),
                      margin: EdgeInsetsDirectional.all(10),padding:EdgeInsetsDirectional.all(20)
                  )),

                  );
                },
              );
            }
        ),

      ),
    );
  }
}


