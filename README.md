# flutter_feature_pack

A comprehensive Flutter package that includes a set of essential features for seamless development.

# Feature Pack Widgets:

- Widget 1: TextInputField
- Widget 2: Button
- Widget 3: No Internet
- Widget 4: Empty
- Widget 5: Error

# Installation

To use this package, add `flutter_feature_pack` as a dependency in your `pubspec.yaml` file:

dependencies:
```
  flutter_feature_pack: ^1.0.0
```

Then run:

flutter pub get

# Usage

```bash
import 'package:flutter_feature_pack/flutter_feature_pack.dart';
```

# Screenshot

<img src="https://github.com/Sohit-Sharma/flutter_feature_pack/assets/35993982/8bfb45c1-1418-4ef4-8809-fc46c1a87250" width="300" height="650">

# Example

```bash
  Column(
            children: [
              const FlutterFeatureNoInternet(),
              FlutterFeatureError(errorMessage: 'Error',onRetry: ()=>{}),
              const FlutterFeatureEmpty(message: 'Empty'),
              const FlutterFeatureTextField(hint: "Enter Input"),
              const FlutterFeatureButton(),
            ],
        )
```

## Author

<a class="github-button" href="https://github.com/Sohit-Sharma" aria-label="Follow @Sohit-Sharma on GitHub">Follow GitHub @Sohit-Sharma</a>

<a class="github-button" href="https://www.linkedin.com/in/sohit-sharma-940084172/" aria-label="LinkedIn: Sohit-Sharma">Follow LinkedIn: @Sohit-Sharma</a>

# Contributing

If you find a bug or want to contribute to this project, feel free to open an issue or submit a pull request. Contributions are welcome!

### Happy Coding!

