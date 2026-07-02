class Weather {
  final double temperature;
  final double apparentTemperature;
  final int humidity;
  final double windSpeed;
  final int weatherCode;
  final String time;

  Weather({
    required this.temperature,
    required this.apparentTemperature,
    required this.humidity,
    required this.windSpeed,
    required this.weatherCode,
    required this.time,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    final current = json['current'];

    return Weather(
      temperature: current['temperature_2m'].toDouble(),
      apparentTemperature: current['apparent_temperature'].toDouble(),
      humidity: current['relative_humidity_2m'],
      windSpeed: current['wind_speed_10m'].toDouble(),
      weatherCode: current['weather_code'],
      time: current['time'],
    );
  }
}