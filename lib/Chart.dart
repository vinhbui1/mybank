import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:async';
import 'dart:math';

class Chart extends StatefulWidget {
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  final Color blueBarColor = Color.fromRGBO(0, 173, 152, 1);
  final Color yellowBarColor = Color.fromRGBO(255, 187, 0, 1);
  final Color redColor = Color.fromRGBO(249, 53, 67, 1);

  final double blue = 8;
  double temp = 0;
  final double width = 7;

  List<BarChartGroupData> rawBarGroups;
  List<BarChartGroupData> showingBarGroups;

  StreamController<BarTouchResponse> barTouchedResultStreamController;

  int touchedGroupIndex;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 8);
    final barGroup2 = makeGroupData(1, 10);
    final barGroup3 = makeGroupData(2, 9);
    final barGroup4 = makeGroupData(3, 16);
    final barGroup5 = makeGroupData(4, 7);
    final barGroup6 = makeGroupData(5, 10);
    final barGroup7 = makeGroupData(6, 5);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;

    barTouchedResultStreamController = StreamController();
    barTouchedResultStreamController.stream
        .distinct()
        .listen((BarTouchResponse response) {
      if (response == null) {
        return;
      }

      if (response.spot == null) {
        setState(() {
          touchedGroupIndex = -1;
          showingBarGroups = List.of(rawBarGroups);
        });
        return;
      }

      touchedGroupIndex =
          showingBarGroups.indexOf(response.spot.touchedBarGroup);

      setState(() {
        if (response.touchInput is FlLongPressEnd) {
          touchedGroupIndex = -1;
          showingBarGroups = List.of(rawBarGroups);
        } else {
          showingBarGroups = List.of(rawBarGroups);
          if (touchedGroupIndex != -1) {
            showingBarGroups[touchedGroupIndex] =
                showingBarGroups[touchedGroupIndex].copyWith(
              barRods: showingBarGroups[touchedGroupIndex].barRods.map((rod) {
                return rod.copyWith(color: Colors.red, y: rod.y);
              }).toList(),
            );
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final heightofTabar = MediaQuery.of(context).padding.top;
    return AspectRatio(
      aspectRatio: 1.3,
      child: Card(
        //elevation: 1,
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        //color: Color(0xff2c4260),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    color: Colors.grey,
                    onPressed: () {},
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      children: <Widget>[
                        Text("This Week"),
                        Icon(Icons.arrow_downward)
                      ],
                    ),
                  ),
                ],
              ),
                 Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: FlChart(
                    chart: BarChart(BarChartData(
                      maxY: 20,
                      barTouchData: BarTouchData(
                        touchTooltipData: TouchTooltipData(
                            tooltipRoundedRadius: 30,
                            tooltipBgColor: Colors.black,
                            getTooltipItems: (touchedSpots) {
                              return touchedSpots.map((touchedSpot) {
                                String weekDay;
                                switch (touchedSpot.spot.x.toInt()) {
                                  case 1:
                                    weekDay = 'Monday';
                                    break;
                                  case 2:
                                    weekDay = 'Tuesday';
                                    break;
                                  case 3:
                                    weekDay = 'Wednesday';
                                    break;
                                  case 4:
                                    weekDay = 'Thursday';
                                    break;
                                  case 5:
                                    weekDay = 'Friday';
                                    break;
                                  case 6:
                                    weekDay = 'Saturday';
                                    break;
                                  case 0:
                                    weekDay = 'Sunday';
                                    break;
                                }
                                return TooltipItem(
                                    weekDay +
                                        '\n' +
                                        touchedSpot.spot.y.toString(),
                                    TextStyle(color: Colors.white));
                              }).toList();
                            }),
                        touchResponseSink:
                            barTouchedResultStreamController.sink,
                      ),
                      titlesData: FlTitlesData(
                        show: true,
                        bottomTitles: SideTitles(
                          showTitles: true,
                          textStyle: TextStyle(
                              color: const Color(0xff7589a2),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                          margin: 20,
                          getTitles: (double value) {
                            switch (value.toInt()) {
                              case 0:
                                return 'S';
                              case 1:
                                return 'M';
                              case 2:
                                return 'T';
                              case 3:
                                return 'W';
                              case 4:
                                return 'T';
                              case 5:
                                return 'F';
                              case 6:
                                return 'S';
                            }
                          },
                        ),
                        leftTitles: 
                        SideTitles(
                          showTitles: false,
                          textStyle: TextStyle(
                              color: const Color(0xff7589a2),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                          //   margin: 32,
                          reservedSize: 14,
                        ),
                      ),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      barGroups: showingBarGroups,
                    )),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 12,
              // ),
            ],
          ),
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(int x, double y2) {
    return BarChartGroupData(barsSpace: 4, x: x, barRods: [
      BarChartRodData(
        y: y2,
        color: y2 > blue ? yellowBarColor : blueBarColor,
        width: width,
        isRound: true,
      ),
    ]);
  }
}
