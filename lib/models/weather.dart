/// main : {"temp":283.58,"feels_like":282.79,"pressure":1014,"humidity":81}
/// wind : {"speed":4.87}

class Weather {
  String? cityName;
  double? temp;
  double? wind;
  int? humidity;
  int? pressure;
  double? feels_like;

  Weather(
      {this.cityName,
      this.temp,
      this.wind,
      this.humidity,
      this.pressure,
      this.feels_like});

  // dynamic because we do not know the types of the value until the runtime
  // Named constructor
  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
    feels_like = json["main"]["feels_like"];
  }
}
