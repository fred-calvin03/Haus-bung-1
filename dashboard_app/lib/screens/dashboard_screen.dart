import 'package:flutter/material.dart';

import '../models/weather.dart';
import '../services/weather_service.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late Future<Weather> futureWeather;

  @override
  void initState() {
    super.initState();
    futureWeather = WeatherService().fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mein Dashboard"),
        centerTitle: true,
      ),
      body: FutureBuilder<Weather>(
        future: futureWeather,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text("Fehler: ${snapshot.error}"),
            );
          }

          final weather = snapshot.data!;

          return Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(
              children: [

                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [

                        const Text(
                          "🌤 Aktuelles Wetter",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 15),

                        Text(
                          "Temperatur: ${weather.temperature} °C",
                          style: const TextStyle(fontSize: 18),
                        ),

                        Text(
                          "Gefühlt: ${weather.apparentTemperature} °C",
                          style: const TextStyle(fontSize: 18),
                        ),

                        Text(
                          "Luftfeuchtigkeit: ${weather.humidity} %",
                          style: const TextStyle(fontSize: 18),
                        ),

                        Text(
                          "Wind: ${weather.windSpeed} km/h",
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: const [

                        Text(
                          "📚 Lern-Dashboard",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 15),

                        Text(
                          "Nächste Abgabe: Hausübung Flutter",
                          style: TextStyle(fontSize: 18),
                        ),

                        SizedBox(height: 10),

                        Text(
                          "Lernzeit heute: 3 Stunden",
                          style: TextStyle(fontSize: 18),
                        ),

                        SizedBox(height: 10),

                        Text(
                          "Fortschritt: 80 %",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}