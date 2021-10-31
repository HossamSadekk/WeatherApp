import 'package:flutter/material.dart';
import 'package:weather_app/widgets/additional_information.dart';
import 'package:weather_app/widgets/current_weather.dart';

import 'api/weatherApi.dart';
import 'models/weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherApi weatherApi = WeatherApi();
  Weather? weatherData;

  Future<void> getData() async {
    weatherData = await weatherApi.getCurrentWeather("Egypt");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          "Weather App",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Colors.black,
        ),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                currentWeather(Icons.wb_sunny_rounded, "${weatherData?.temp}",
                    "${weatherData?.cityName}"),
                const SizedBox(
                  height: 40.0,
                ),
                const Text(
                  "Additional Information",
                  style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
                Divider(),
                const SizedBox(
                  height: 20.0,
                ),
                additionalInformation(
                    "${weatherData?.wind}",
                    "${weatherData?.humidity}",
                    "${weatherData?.pressure}",
                    "${weatherData?.feels_like}"),
              ],
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return const Center(
            child: Text("Something went wrong"),
          );
        },
      ),
    );
  }
}
