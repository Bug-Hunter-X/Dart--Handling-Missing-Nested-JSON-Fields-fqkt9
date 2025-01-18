# Dart: Handling Missing Nested JSON Fields

This repository demonstrates a common error in Dart when working with JSON data: attempting to access a nested field without first verifying its existence.  This can lead to runtime exceptions if the nested field is missing from the JSON response.

The `bug.dart` file showcases the problematic code.  The `bugSolution.dart` file provides a solution that addresses this issue by using null-aware operators and handling potential exceptions.

## How to reproduce the bug:

1. Run `bug.dart`. 
2. If the API response doesn't contain the expected nested field, the program will throw an exception.

## How to fix the bug:

The `bugSolution.dart` file demonstrates how to fix this. Key changes include adding null checks using the `?` operator and handling exceptions using try-catch blocks to prevent the program from crashing.

This example highlights the importance of defensive programming when working with external data sources.