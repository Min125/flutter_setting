import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _value = 0.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primaryColor: Colors.white, brightness: Brightness.light),
      home: Scaffold(
          backgroundColor: Colors.grey[350],
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 7,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.blue,
                            size: 25,
                          ),
                          Text(
                            'Foodie',
                            style: TextStyle(color: Colors.blue, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 10,
                    child: Text(
                      'Setting',
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ))
              ],
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    'ABOUT',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )),
              Card(
                margin: EdgeInsets.only(top: 10),
                child: Container(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    '"Mandalay Foodie" is a dinning guide for both locals & visitors in Mandalay, Myanmar.\nThis app intends to help people who are having a difficult time to find out what to eat and where to eat in Mandalay',
                    style:
                        TextStyle(fontSize: 15.5, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    'VERSION',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )),
              Card(
                margin: EdgeInsets.only(top: 10),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Version 1.2',
                    style:
                        TextStyle(fontSize: 15.5, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    'SEARCH PREFERENCE',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )),
              Card(
                margin: EdgeInsets.only(top: 10),
                child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 15, bottom: 10),
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Distance Unit:',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RaisedButton(
                              color: Colors.blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  side: BorderSide(color: Colors.blue)),
                              onPressed: () {},
                              child: Text(
                                'Meter',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            RaisedButton(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  side: BorderSide(color: Colors.blue)),
                              onPressed: () {},
                              child: Text(
                                'Mile',
                                style: TextStyle(color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            'Nearby Radius:',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),

                        // SfSlider(
                        //   activeColor: Colors.blue,
                        //   min: 0.0,
                        //   max: 3000.0,
                        //   value: _value,
                        //   interval: 500,
                        //   showTicks: true,
                        //   showLabels: true,
                        //   showTooltip: true,
                        //   minorTicksPerInterval: 1,
                        //   onChanged: (dynamic value) {
                        //     setState(() {
                        //       _value = value;
                        //     });
                        //   },
                        // ),

                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 10, left: 15),
                            width: 330,
                            child: Row(
                              children: [
                                Text(
                                  '0',
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(
                                  width: 37,
                                ),
                                Text(
                                  '500',
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(
                                  width: 21,
                                ),
                                Text(
                                  '1000',
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(
                                  width: 21,
                                ),
                                Text(
                                  '1500',
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(
                                  width: 21,
                                ),
                                Text(
                                  '2000',
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(
                                  width: 21,
                                ),
                                Text(
                                  '2500',
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(
                                  width: 21,
                                ),
                                Text(
                                  '3000',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          width: 380,
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                thumbColor: Colors.blue, trackHeight: 1),
                            child: Slider(
                              value: _value,
                              min: 0.0,
                              max: 3000.0,
                              divisions: 6,
                              onChanged: (double newValue) {
                                setState(() {
                                  _value = newValue;
                                  print(newValue);
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    'CONTACT US',
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  )),
              Card(
                margin: EdgeInsets.only(top: 10),
                child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 15, bottom: 15),
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Text(
                          'Your feedback is most welcome. \nPlease send any comment & suggestion you may have to us!',
                          style: TextStyle(
                              fontSize: 15.5, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Feedback',
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    )),
              ),
            ],
          )),
    );
  }
}
