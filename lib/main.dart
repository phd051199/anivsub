import 'package:anivsub/app/app.dart';
import 'package:anivsub/app/bootstrap.dart';
import 'package:anivsub/core/environment/environment.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  await bootstrap(
    kReleaseMode ? Environment.prod : Environment.dev,
  );

  runApp(
    const MyApp(),
  );
}
