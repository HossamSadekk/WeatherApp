import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather.dart';

class WeatherApi {
  Future<Weather> getCurrentWeather(String location) async {
    var endPoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=8006526ab3a09c39059bf7d73d45e7ce");
    var response = await http.get(endPoint);
    var body = jsonDecode(response.body);
    return Weather.fromJson(body);
  }
}
