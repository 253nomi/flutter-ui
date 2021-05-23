import 'package:flutter/material.dart';
import 'package:flutter_hassam_ui/item.dart';

class PanelWidget extends StatefulWidget {
  final ScrollController controller;

  const PanelWidget({Key key, @required this.controller}) : super(key: key);

  @override
  _PanelWidgetState createState() => _PanelWidgetState();
}

class _PanelWidgetState extends State<PanelWidget> {
  Item selectedValue;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      SizedBox(height: 20),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          "Calaroies",
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20),
        ),
        Container(
          decoration: BoxDecoration(),
          child: DropdownButton<Item>(
            hint: Text(
              "Select item",
              style: TextStyle(color: Colors.white),
            ),
            value: selectedValue,
            iconEnabledColor: Colors.white,
            icon: Icon(Icons.expand_more),
            onChanged: (Item value) {
              setState(() {
                selectedValue = value;
              });
            },
            items: users.map((Item user) {
              return DropdownMenuItem<Item>(
                value: user,
                child: Container(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        user.name,
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ]),

       SizedBox(height: 20),

       Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
        Container(
          height: 60,
          width: 8,
          decoration: BoxDecoration(
            color: Colors.white38,
             borderRadius: BorderRadius.circular(30) )
        ),
         Container(
          height: 60,
          width: 8,
          decoration: BoxDecoration(
            color: Colors.white38,
            borderRadius: BorderRadius.circular(30) )
        ),
         Container(
          height: 60,
          width: 8,
          decoration: BoxDecoration(
            color: Colors.white38,
             borderRadius: BorderRadius.circular(30) )
        ),
         Container(
          height: 60,
          width: 8,
          decoration: BoxDecoration(
            color: Colors.white38 ,
             borderRadius: BorderRadius.circular(30))
        ),
         Container(
          height: 60,
          width: 8,
          decoration: BoxDecoration(
            color: Colors.white38,
             borderRadius: BorderRadius.circular(30) )
        ),
         Container(
          height: 60,
          width: 8,
          decoration: BoxDecoration(
            color: Colors.white38,
             borderRadius: BorderRadius.circular(30) )
        ),
         Container(
          height: 60,
          width: 8,
          decoration: BoxDecoration(
            color: Colors.white38,
             borderRadius: BorderRadius.circular(30) )
        )
          
        ]
      ),
      SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          DayTextWidget(text:"M"),
          DayTextWidget(text:"T"),
          DayTextWidget(text:"W"),
          DayTextWidget(text:"T"),
          DayTextWidget(text:"F"),
          DayTextWidget(text:"S"),
          DayTextWidget(text:"S"),
        ]
      ),
    ]));
  }

  List<Item> users = <Item>[
    const Item('This Week'),
    const Item(
      'This Month',
    ),
    const Item('This year'),
    const Item(
      'This Day',
    ),
  ];
}

class DayTextWidget extends StatelessWidget {
  const DayTextWidget({
    Key key,
    @required this.text
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      color: Colors.white24
    ),);
  }
}
