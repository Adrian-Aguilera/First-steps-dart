import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Jobs {
  static Future<void> getJobs() async {
    final headers = {
      "Content-Type": "application/json",
      'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzY2MTgzMTg5LCJpYXQiOjE3NjYxNzk1ODksImp0aSI6ImUzYjI0NDBkMTkwYzQxZDI5YzQ2MzE3ODMwZjEwNjIzIiwiY29kZSI6ImNiUTdZUHdxVXJNLmZCUzdpQk93T0ZUV1VwTlhfLV81QkEueEJVOFl0WFc1aGdBVVhkTUlrVHk2Zy5yRzctWFdRQUU0clFwUUxNdVUxX1FGZHhRNlhqOGlqcGl0cnNhckk2NVg4In0.4RJt-rHgTqOj6WHZIUdZHjFYtCkgS8EmZFExWaS2HI8',
    };
    final baseUrl = 'http://127.0.0.1:8000';
    final url = Uri.parse('$baseUrl/vendor-portal/api/v1/jobs/list/');
    print(url);
    try {
      final response = await http.get(url, headers: headers);
      if (response.statusCode == 200) {
        List<dynamic> jobs = jsonDecode(response.body);
        for (var job in jobs) {
          print('Job Title: ${job['title']}, Company: ${job['company']}');
        }
      } else {
        print('Failed to load jobs. Status code: ${response.statusCode} response: ${response.body}');
      }
    } catch (e) {
      print('Error fetching jobs: $e');
    }
  }
}
