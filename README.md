# Unhandled JSON Decoding Exception in Dart

This repository demonstrates a common error in Dart applications involving asynchronous network requests and JSON parsing. The original code lacks robust error handling during the JSON decoding process, which can lead to unexpected crashes. The improved code showcases best practices for handling potential exceptions, ensuring more reliable application behavior.

## Bug Description

The original `fetchData` function in `bug.dart` makes a network request and attempts to decode the JSON response. However, it doesn't explicitly handle the `FormatException` that `jsonDecode` might throw if the server returns invalid JSON.  This can result in the application crashing or displaying an unexpected error.

## Solution

The `bugSolution.dart` file provides a revised `fetchData` function. The improved version includes a `try-catch` block to specifically catch `FormatException` and other exceptions that might occur during JSON decoding or the network request.  Appropriate error handling mechanisms are implemented to gracefully manage these situations, preventing the application from crashing.