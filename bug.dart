```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success! Parse the JSON response
      final jsonData = jsonDecode(response.body);
      // Process the jsonData
    } else {
      // Handle error
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exception
    print('An error occurred: $e');
    // Consider rethrowing or handling differently based on needs
    rethrow; // Or handle the exception appropriately
  }
}
```