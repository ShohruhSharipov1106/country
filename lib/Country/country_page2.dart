import 'package:country/Country/country_page3.dart';
import 'package:country/Country/weather_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:weather_icons/weather_icons.dart';

class Country_Page2 extends StatefulWidget {
  String image;
  String davlat;
  String poytaxt;
  String rasmiy_nomi;
  String yer;
  String aholi;
  String bayroq;
  String joy;
  Country_Page2(
    this.image,
    this.davlat,
    this.poytaxt,
    this.rasmiy_nomi,
    this.yer,
    this.aholi,
    this.bayroq,
    this.joy,
  );
  @override
  _Country_Page2State createState() => _Country_Page2State();
}

class _Country_Page2State extends State<Country_Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    top: 10.0,
                    bottom: 400.0,
                    right: 300.0,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.black54,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    FutureBuilder(
                      future: _getWeatherApi(),
                      builder: (context, AsyncSnapshot<Weather> snap) {
                        var data = snap.data;

                        return snap.hasData
                            ? Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      data!.main!.temp! > 288.15
                                          ? WeatherIcons.day_sunny
                                          : WeatherIcons.day_cloudy,
                                      size: 30.0,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(width: 20.0),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          (data.main!.temp! - 273.15).toStringAsFixed(2),
                                          style: const TextStyle(
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(height: 10.0),
                                        Text(
                                          "Wind: " +
                                              data.wind!.speed.toString() +
                                              ",\t" +
                                              data.weather![0].description
                                                  .toString(),
                                          style: const TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white70,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            : const SizedBox(height: 150.0);
                      },
                    ),
                    Text(
                      widget.rasmiy_nomi,
                      style: const TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      widget.poytaxt.toString() + ", " + widget.davlat,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[300],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            fixedSize: const Size(180.0, 50.0),
                            side: const BorderSide(
                              color: Colors.white,
                              width: 2.0,
                            ),
                            backgroundColor: Colors.transparent,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Country_Page3(
                                  widget.image,
                                  widget.davlat,
                                  widget.poytaxt,
                                  widget.rasmiy_nomi,
                                  widget.yer,
                                  widget.aholi,
                                  widget.bayroq,
                                  widget.joy,
                                ),
                              ),
                            );
                          },
                          child: const Text(
                            "Preview",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            fixedSize: const Size(180.0, 50.0),
                            side: BorderSide.none,
                            backgroundColor: Colors.greenAccent,
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Start Round",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              widget.image.toString(),
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Future<Weather> _getWeatherApi() async {
    Uri url = Uri.parse(
        "http://api.openweathermap.org/data/2.5/weather?q=${widget.poytaxt}&appid=23b6521f93275a74c7f67f4c0ae8935c");

    var res = await http.get(url);

    if (res.statusCode == 200) {
      return Weather.fromJson(json.decode(res.body));
    } else {
      throw Exception("Xato bor: ${res.statusCode}");
    }
  }
}
