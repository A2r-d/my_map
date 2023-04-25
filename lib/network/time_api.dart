import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class TimeApi {
  static const String _baseUrl = 'http://worldtimeapi.org/api/timezone/Asia/Tehran';

  static Future<String> fetchTime() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        final dateTime = DateTime.parse(json['datetime']);
        final timeString = '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}:${dateTime.second.toString().padLeft(2, '0')}';
        await saveTime(timeString);
        return timeString;
      } else {
        return '--:--:--';
      }
    } catch (e) {
      return '--:--:--';
    }
  }

  static Future<void> saveTime(String time) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('last_time', time);
  }

  static Future<String> getLastTime() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('last_time') ?? '--:--:--';
  }
}