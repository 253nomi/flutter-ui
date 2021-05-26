import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class PatientList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: size.height * 0.05),
        Padding(
          padding: EdgeInsets.only(
              left: size.width * 0.02, right: size.width * 0.03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black26,
                    size: 18,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              Text(
                "Worthy Miles",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.red[200]),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.black26,
                  size: 18,
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Container(
            height: size.height * 0.22,
            width: size.width * 0.88,
            decoration: BoxDecoration(
                color: Colors.blue[800],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: size.height * 0.01),
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.07,
                    ),
                    child: Text(
                      "Loacation",
                      style: TextStyle(color: Colors.white54, fontSize: 10),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 0.07, right: size.width * 0.07),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ISLAMABAD",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.location_on,
                          color: Colors.red[300],
                        )
                      ],
                    ),
                  ),
                    Padding(
                      padding:  EdgeInsets.only(
                        left: size.width * 0.07, right: size.width * 0.07),
                      child: Divider(height: 10, thickness: 1,
                      color: Colors.white24,),
                    ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 0.07, right: size.width * 0.07),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "change your blood group",
                          style: TextStyle(color: Colors.white54, fontSize: 10),
                        ),
                        Container(
                          height: size.width * 0.08,
                          width: size.width * 0.11,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue[600]),
                          child: Center(
                            child: Text(
                              "A+",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                ]),
          ),
        ),
        SizedBox(height: size.height * 0.02),
        Padding(
          padding: EdgeInsets.only(
              left: size.width * 0.06, right: size.width * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "PatientList",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black26),
              ),
              IconButton(
                  icon: Icon(
                    Icons.filter_list,
                    color: Colors.black26,
                    size: 18,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ),
        PatientData(size: size),
         SizedBox(height: size.height * 0.02),
         PatientData(size: size),
      ]),
    ));
  }
}

class PatientData extends StatelessWidget {
  const PatientData({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: size.height * 0.41,
        width: size.width * 0.88,
        decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(20)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: size.width * 0.12,
                    height: size.width * 0.14,
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
                  SizedBox(width: size.width * 0.23),
                  Text(
                    "# 3939",
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(width: size.width * 0.05),
                ],
              ),
              Text(
                "Hafeez Ullah",
                style: TextStyle(color: Colors.black, fontSize: 14,
                fontWeight: FontWeight.w900),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.red[300],
                  ),
                  Text(
                    "Battagram Medical Center",
                    style: TextStyle(color: Colors.black,
                     fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Stack(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Container(
                          height: size.height * 0.12,
                          width: size.width * 0.15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: Column(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "A+",
                                style: TextStyle(
                                  color: Colors.red[300],
                                  fontSize: 14,
                                ),
                              ),
                              Divider(height: 10, thickness: 1),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "5",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      "/11",
                                      style: TextStyle(
                                        color: Colors.black26,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ]),
                            ],
                          )),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: size.height * 0.22,
                      width: size.width * 0.46,
                      // color: Colors.brown,

                      child: SfRadialGauge(
                        axes: <RadialAxis>[
                          RadialAxis(
                            showLabels: false,
                            showTicks: false,
                            startAngle: -270,
                            maximum: 11,
                            minimum: 0,
                            endAngle: -270,
                            radiusFactor: 0.7,
                            canScaleToFit: true,
                            axisLineStyle: AxisLineStyle(
                              thickness: 0.05,
                              color: Colors.black12,
                              thicknessUnit: GaugeSizeUnit.factor,
                              cornerStyle: CornerStyle.startCurve,
                            ),
                            pointers: <GaugePointer>[
                              RangePointer(
                                  value: 5,
                                  width: 0.05,
                                  sizeUnit: GaugeSizeUnit.factor,
                                  cornerStyle: CornerStyle.startCurve,
                                  gradient: SweepGradient(colors: <Color>[
                                    Colors.red[200],
                                    Colors.red[200]
                                  ], stops: <double>[
                                    0.25,
                                    0.75
                                  ])),
                              MarkerPointer(
                                value: 5,
                                markerType: MarkerType.circle,
                                color: Colors.red[200],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
