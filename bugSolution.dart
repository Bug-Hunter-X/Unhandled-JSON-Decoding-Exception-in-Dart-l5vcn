```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // Process jsonData
        print('JSON data: $jsonData');
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        // Handle the invalid JSON format (e.g., log, retry, display an error)
      } catch (e) {
        print('Error decoding JSON: $e');
        // Handle other errors during JSON processing
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  } catch (e) {
    print('An error occurred: $e');
  }
}
```