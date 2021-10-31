import 'package:flutter/material.dart';

Widget currentWeather(IconData iconData, String temp, String location) {
  return Center(
    child: Column(
      children: [
        Icon(
          iconData,
          color: Colors.orange,
          size: 64.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          temp,
          style: const TextStyle(
            fontSize: 46.0,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          location,
          style: const TextStyle(fontSize: 18.0, color: Colors.black45),
        )
      ],
    ),
  );
}
