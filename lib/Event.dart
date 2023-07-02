import 'package:flutter/material.dart';

class New_Event extends StatefulWidget {
  const New_Event({Key? key}) : super(key: key);

  @override
  State<New_Event> createState() => _New_EventState();
}

class _New_EventState extends State<New_Event> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Event'),
        backgroundColor: Colors.blue[600],
      ),
      backgroundColor: Colors.blue[300],
      body:Column(
        children: [
          Builder(
              builder: (context) {
                return Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 300, 20, 0),
                  child: Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                    child: SizedBox(
                      child: TextField(
                        style: TextStyle(color: Colors.black87,fontSize:25,letterSpacing: 2,textBaseline:null),
                        controller: _textEditingController,

                        decoration: InputDecoration(
                          border: InputBorder.none,
                          label: Text(
                            style: TextStyle(color: Colors.red),
                            "Event",),
                          icon: Icon(
                              color:Colors.black,
                              Icons.calendar_month),


                        ),
                        maxLines: null,

                      ),
                    ),
                  ),
                );

              }
          ),
          ElevatedButton(
            onPressed: () {
              String newEventText = _textEditingController.text;
              Navigator.of(context).pop(newEventText);
            }, child: Text('ADD'),
          )
        ],
      ),
    );
  }
}



