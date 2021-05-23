import 'package:flutter/material.dart';
import 'package:flutter_hassam_ui/panelWidget.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SlidingUpPanel(
      maxHeight: 210,
      header: Divider(color: Colors.black),
      minHeight: 25,
      color: Colors.indigo,
      border: Border.symmetric(
        vertical: BorderSide.none,
      ),
      borderRadius: BorderRadius.circular(40),
      parallaxEnabled: true,
      panelBuilder: (scrollController) =>
          PanelWidget(controller: scrollController),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  icon: Icon(Icons.chevron_left),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              Text(
                "Profile",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Icon(Icons.more_horiz),
            ],
          ),
          SizedBox(height: 12),
          Container(
            width: size.width * 0.25,
            height: size.width * 0.28,
            margin: EdgeInsets.only(
              top: 20,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Hafeez Ullah",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.brightness_1,
              size: 24,
              color: Colors.yellow[700],
            ),
            SizedBox(width: 5),
            Text(
              "510",
              style: TextStyle(
                  color: Colors.yellow[700],
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ]),
          SizedBox(height: 30),
          Container(
            width: size.width * 0.8,
            height: size.height * 0.18,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black26),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                SizedBox(height: 20),
                Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(children: [
                          Text(
                            "110.3 lbs",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "Weight",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ]),
                        Icon(
                          Icons.brightness_1,
                          size: 24,
                          color: Colors.yellow[700],
                        ),
                        Column(children: [
                          Text(
                            "5.3 feet",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "height",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ]),
                      ]),
                ),
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}
