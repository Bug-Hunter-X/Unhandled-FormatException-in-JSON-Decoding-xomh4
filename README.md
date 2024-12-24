# Unhandled FormatException in Dart JSON Decoding

This repository demonstrates a common error in Dart when handling JSON responses from network requests. The provided code fetches data, but fails to handle the `FormatException` that can occur if the JSON response is malformed.  The solution provides a more robust approach to prevent crashes due to invalid JSON.

## Bug
The `bug.dart` file contains code that fetches data from a URL and attempts to parse it as JSON. It correctly handles HTTP errors, but lacks proper error handling for `FormatException`, which can occur if the response isn't valid JSON.  This could cause the app to crash.

## Solution
The `bugSolution.dart` file demonstrates a better approach. It uses a `try-catch` block specifically to handle `FormatException`, providing a more graceful way to handle invalid JSON responses and preventing crashes.