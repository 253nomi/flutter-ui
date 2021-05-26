import 'package:flutter/material.dart';
class DailyFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Center(
        child: Container(
          height: 170,
          width: MediaQuery.of(context).size.width,
         
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      height: 130,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF47B88A),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 18, bottom: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Lay's",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                    fontSize: 20)),
                            SizedBox(height: 4),
                            Text("Sour Cream & \nOnion",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 14)),
                            Expanded(
                                child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image.asset("assets/images/coin.png", height: 20)
                                ,SizedBox(width: 5),
                                Text("11",  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                    fontSize: 14),)
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: MediaQuery.of(context).size.width * 0.3,
                  child: Image.asset(
                    "assets/images/lays.png",
                    height: 170,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}