
import 'package:flutter/material.dart';
import 'package:live_test_11/weather_list.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherList(),
    );
  }
}



class WeatherCard extends StatelessWidget {
  final Map<String, dynamic> cityWeather;

  const WeatherCard({super.key, required this.cityWeather});

  @override
  Widget build(BuildContext context) {
    return Card(

      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'City: ${cityWeather['city']}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Text('Temperature: ${cityWeather['temperature']}°C' , style: const TextStyle(color: Colors.grey),),
            Text('Condition: ${cityWeather['condition']}', style: const TextStyle(color: Colors.grey),),
            Text('Humidity: ${cityWeather['humidity']}%', style: const TextStyle(color: Colors.grey),),
            Text('Wind Speed: ${cityWeather['windSpeed']} km/h', style: const TextStyle(color: Colors.grey),),
          ],
        ),
      ),
    );
  }
}