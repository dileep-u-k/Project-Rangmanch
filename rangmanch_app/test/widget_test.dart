import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rangmanch_app/app/app.dart';

void main() {
  testWidgets('Rangmanch app boots successfully', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: RangmanchApp(),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Enter My Universe'), findsOneWidget);
    expect(find.text('Enter your stage name'), findsOneWidget);
  });
}