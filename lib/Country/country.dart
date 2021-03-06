import 'dart:convert';
import 'dart:math';

import 'package:country/Country/country_model.dart';
import 'package:country/Country/country_page2.dart';
import 'package:country/Country/sizer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sizer/sizer.dart';

class Country extends StatefulWidget {
  const Country({Key? key}) : super(key: key);

  @override
  _CountryState createState() => _CountryState();
}

class _CountryState extends State<Country> {
  TextEditingController _countryController = TextEditingController();
  String enteredCountry = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kWidth(20.0).w,vertical: kHeight(20.0).h,),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "Countries\n\n",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                      TextSpan(
                        text: "Find a place",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: kHeight(20.0).h),
                TextFormField(
                  controller: _countryController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                    ),
                    hintText: "Type to search...",
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 18.0,
                    ),
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black38,
                      ),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        enteredCountry = _countryController.text;
                        setState(() {});
                      },
                      icon:  Icon(
                        Icons.send,
                        size: kHeight(20.0).h,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: kHeight(30.0).h),
                const Text(
                  "Popular Countries",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: kHeight(30.0).h),
                FutureBuilder(
                  future: _getCountrysfromApi(),
                  builder: (context, AsyncSnapshot<List<CountryModel>> snap) {
                    var data = snap.data;
                    return snap.hasData
                        ? SizedBox(
                            height: kHeight(250.0).h,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                int randomIndex =
                                    Random().nextInt(data!.length);
                                return Container(
                                  width: kWidth(160.0).w,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: kWidth(5.0).w),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: kWidth(15.0).w,
                                    vertical: kHeight(20.0).h,
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://source.unsplash.com/1600x900/?${data[randomIndex].name!.common.toString()},${data[randomIndex].capital![0].toString()}",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data[randomIndex]
                                            .name!
                                            .common
                                            .toString(),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 16.0,
                                          ),
                                          SizedBox(width: kWidth(5.0).w),
                                          Text(
                                            "4." +
                                                Random().nextInt(10).toString(),
                                            style: TextStyle(
                                              color: Colors.grey[350],
                                            ),
                                          ),
                                          SizedBox(width: kWidth(5.0).w),
                                          Icon(
                                            Icons.circle_rounded,
                                            size: 5.0,
                                            color: Colors.grey[350],
                                          ),
                                          SizedBox(width: kWidth(5.0).w),
                                          Text(
                                            "${1 + Random().nextInt(4)}" +
                                                "." +
                                                Random().nextInt(10).toString(),
                                            style: TextStyle(
                                              color: Colors.grey[350],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
                              itemCount: 10,
                            ),
                          )
                        : Container(
                            height: kHeight(250.0).h,
                          );
                  },
                ),
                SizedBox(height: kHeight(20.0).h),
                const Text(
                  "Top Rated",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: kHeight(20.0).h),
                FutureBuilder(
                  future: _getSelectedCountrysfromApi(),
                  builder: (context, AsyncSnapshot<List<CountryModel>> snap) {
                    var data = snap.data;
                    return snap.hasData
                        ? GestureDetector(
                            onTap: () {
                              String network_img =
                                  "https://source.unsplash.com/1600x900/?${data![0].name!.common.toString()},${data[0].capital![0].toString()}";
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Country_Page2(
                                      network_img,
                                      data[0].name!.common.toString(),
                                      data[0].capital![0].toString(),
                                      data[0].name!.official.toString(),
                                      data[0].area.toString(),
                                      data[0].population.toString(),
                                      data[0].flag.toString(),
                                      data[0].maps!.openStreetMaps.toString()),
                                ),
                              );
                            },
                            child: Container(
                              height: kHeight(200.0).h,
                              width: kWidth(400.0).w,
                              margin: EdgeInsets.symmetric(
                                  horizontal: kWidth(5.0).w),
                              padding: EdgeInsets.symmetric(
                                horizontal: kWidth(25.0).w,
                                vertical: kHeight(25.0).h,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                    Colors.black45.withOpacity(0.8),
                                    BlendMode.dstATop,
                                  ),
                                  image: NetworkImage(
                                      "https://source.unsplash.com/1600x900/?${data![0].name!.common.toString()},${data[0].capital![0].toString()}"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Official name:\n${data[0].name!.official}",
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        Text(
                                          "${data[0].name!.common}",
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 28.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CircleAvatar(
                                          radius: 30.0,
                                          backgroundImage: NetworkImage(
                                            data[0].flags!.png.toString(),
                                          ),
                                        ),
                                        Text(
                                          "Capital:\n${data[0].capital![0]}",
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: 3,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart_sharp),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.golf_course),
            label: "",
          ),
        ],
      ),
    );
  }

  Future<List<CountryModel>> _getCountrysfromApi() async {
    Uri url = Uri.parse("https://restcountries.com/v3.1/all");

    var res = await http.get(url);

    if (res.statusCode == 200) {
      return (json.decode(res.body) as List)
          .map((e) => CountryModel.fromJson(e))
          .toList();
    } else {
      throw Exception("Xato bor: ${res.statusCode}");
    }
  }

  Future<List<CountryModel>> _getSelectedCountrysfromApi() async {
    Uri url = Uri.parse(
        "https://restcountries.com/v3.1/name/${_countryController.text}");

    var res = await http.get(url);
    if (res.statusCode == 200) {
      return (json.decode(res.body) as List)
          .map((e) => CountryModel.fromJson(e))
          .toList();
    } else {
      throw Exception("Xato bor: ${res.statusCode}");
    }
  }
}
