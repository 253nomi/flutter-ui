import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class WorthyMilesDashboard extends StatefulWidget {
  @override
  _WorthyMilesDashboardState createState() => _WorthyMilesDashboardState();
}

class _WorthyMilesDashboardState extends State<WorthyMilesDashboard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: size.height * 0.06),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Worthy Miles",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              Container(
                height: size.height * 0.02,
                width: size.width * 0.08,
                child: Icon(
                  Icons.notification_important,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: size.height * 0.02,
                width: size.width * 0.08,
                child: Image.asset(
                  "assets/images/arrow.png",
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Icon(
              Icons.arrow_back,
              color: Colors.white54,
            ),
            Container(
              height: size.height * 0.28,
              width: size.width * 0.69,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      height: size.height * 0.1,
                      width: size.height * 0.1,
                      decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(80)),
                      child: Icon(
                        Icons.directions_walk,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: size.height * 0.17,
                      width: size.height * 0.17,
                      decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(80)),
                    ),
                  ),
                  SfRadialGauge(
                    axes: <RadialAxis>[
                      RadialAxis(
                        minimum: 0,
                        maximum: 100,
                        startAngle: 270,
                        endAngle: 270,
                        showLabels: false,
                        showTicks: false,
                        axisLineStyle: AxisLineStyle(
                          thickness: 0.05,
                          cornerStyle: CornerStyle.bothCurve,
                          color: Colors.white10,
                          thicknessUnit: GaugeSizeUnit.factor,
                        ),
                        pointers: <GaugePointer>[
                          RangePointer(
                              value: 73, // put your value here
                              color: Colors.indigo,
                              width: 5)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.white54,
            ),
          ]),
          Center(
            child: Text(
              "steps",
              style: TextStyle(color: Colors.white30),
            ),
          ),
          Center(
            child: Text(
              "122345",
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(width: size.width * 0.18),
            LowerProgress(
              size: size,
              icon: Icons.directions_walk,
              value: 76,
            ),
            SizedBox(width: size.width * 0.02),
            Text(
              "126",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(width: size.width * 0.01),
            Text(
              "km",
              style: TextStyle(
                color: Colors.white,
                fontSize: 8,
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            LowerProgress(
              size: size,
              icon: Icons.directions_walk,
              value: 34,
            ),
            SizedBox(width: size.width * 0.02),
            Text(
              "88",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(width: size.width * 0.01),
            Text(
              "cal",
              style: TextStyle(
                color: Colors.white,
                fontSize: 8,
              ),
            ),
            SizedBox(width: size.width * 0.18),
          ]),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
            child: Container(
              height: size.height * 0.08,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.directions_run,
                          color: Colors.black,
                        ),
                        Text(
                          "Track Exercise",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.chevron_right,
                          color: Colors.black,
                        ),
                        onPressed: () {}),
                  ]),
            ),
          ),
          Container(
            height: size.height * 0.08,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white10,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FittedBox(
                    fit: BoxFit.contain,
                    child: SvgPicture.asset("assets/images/cube.svg",
                       height: 30,),
                  ),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: SvgPicture.asset("assets/images/network.svg",
                        color: Colors.blue,
                         height: 30,),
                  ),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: SvgPicture.asset("assets/images/arm.svg",
                    height: 30,
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: SvgPicture.asset("assets/images/user.svg",
                        color: Colors.blueGrey,
                        height: 35,),
                  ),
                ]),
          ),
        ]),
      ),
    );
  }
}

class LowerProgress extends StatelessWidget {
  const LowerProgress({
    Key key,
    @required this.size,
    @required this.icon,
    @required this.value,
  }) : super(key: key);

  final Size size;
  final IconData icon;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.15,
      width: size.width * 0.14,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: size.height * 0.1,
              width: size.height * 0.1,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(80)),
              child: Icon(
                this.icon,
                color: Colors.green[900],
                size: 18,
              ),
            ),
          ),
          SfRadialGauge(
            axes: <RadialAxis>[
              RadialAxis(
                minimum: 0,
                maximum: 100,
                startAngle: 270,
                endAngle: 270,
                showLabels: false,
                showTicks: false,
                axisLineStyle: AxisLineStyle(
                  thickness: 0.05,
                  cornerStyle: CornerStyle.bothCurve,
                  color: Colors.black,
                  thicknessUnit: GaugeSizeUnit.factor,
                ),
                pointers: <GaugePointer>[
                  RangePointer(
                      value: this.value, color: Colors.green[900], width: 2)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
