import 'package:anivsub/app.dart';
import 'package:anivsub/bootstrap.dart';
import 'package:anivsub/core/environment/environment.dart';
import 'package:flutter/material.dart';

void main() async {
  await bootstrap(Environment.prod);
  runApp(const MyApp());
}
