import 'package:flutter/material.dart';

Widget additionalInformation(
    String wind, String humidity, String pressure, String feelLike) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(10.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "wind",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "pressure",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  wind,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 18.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  pressure,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 18.0),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Humidity",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Feels Like",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  humidity,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 18.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  feelLike,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 18.0),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
// api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
// 8006526ab3a09c39059bf7d73d45e7ce
