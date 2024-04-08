import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:solid_test_app/app/app.dart';

void main() {
  runApp(const ProviderScope(child: App()));
}
