```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Success! 
      // Note: this should be handled in a more robust way to check
      // the actual response content before parsing JSON.
      final jsonData = jsonDecode(response.body);
      print(jsonData['someKey']);
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exception
    print('Error fetching data: $e');
    //Rethrow the exception to be handled at a higher level
    rethrow;
  }
}
```