```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access a nested field that might be missing
      final nestedValue = jsonData['nested']['field']; //Potential error here if 'nested' or 'field' is missing
      print(nestedValue);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    //Consider more robust error handling
  }
}
```