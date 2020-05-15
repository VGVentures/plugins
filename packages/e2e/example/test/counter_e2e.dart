import 'package:e2e/e2e.dart';
import 'package:e2e_example/main.dart' as app;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  E2EWidgetsFlutterBinding.ensureInitialized();
  testWidgets('Counter increments smoke test', (t) async {
    app.main();
    await t.pumpAndSettle();
//    await tester.pumpWidget(app.MyApp());

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    await t.tap(find.byIcon(Icons.add));
    await t.pump();

    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
