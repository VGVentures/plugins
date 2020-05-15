import 'dart:io' show Platform;

import 'package:e2e/e2e.dart';
import 'package:e2e_example/main.dart' as app;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  E2EWidgetsFlutterBinding.ensureInitialized();
  testWidgets('verify text', (t) async {
    app.main();
    await t.pumpAndSettle();
    expect(find.byWidgetPredicate((w) => w is Text), findsNWidgets(3));
  });
}

bool _hasText(String value) =>
    value.startsWith('Platform: ${Platform.operatingSystem}');
