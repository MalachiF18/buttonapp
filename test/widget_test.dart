import 'package:button_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('shows the inert button', (WidgetTester tester) async {
    await tester.pumpWidget(const ButtonApp());

    expect(find.text('Button'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);

    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    expect(find.text('Button'), findsOneWidget);
  });
}
