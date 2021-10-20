# flutter_jailbreak_detection

Flutter jailbreak and root detection plugin.

It uses [RootBeer](https://github.com/scottyab/rootbeer) on Android,
and [DTTJailbreakDetection](https://github.com/thii/DTTJailbreakDetection) on iOS.

## Getting Started

```
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';

bool jailbroken = await FlutterJailbreakDetection.jailbroken;
bool developerMode = await FlutterJailbreakDetection.developerMode; // android only.

```
