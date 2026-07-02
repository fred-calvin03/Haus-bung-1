import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/weather.dart';

class WeatherService {
  static const String _url =
      'https://api.open-meteo.com/v1/forecast?latitude=50.58&longitude=8.68&current=temperature_2m,relative_humidity_2m,apparent_temperature,weather_code,wind_speed_10m&timezone=Europe%2FBerlin';

  Future<Weather> fetchWeather() async {
    final response = await http.get(Uri.parse(_url));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return Weather.fromJson(data);
    } else {
      throw Exception('Fehler beim Laden der Wetterdaten');
    }
  }
}