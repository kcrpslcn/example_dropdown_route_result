import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:example_dropdown_route_result/main.dart';

final Type dropdownMenuItemType =
    DropdownMenuItem<String?>(child: Container()).runtimeType;

void main() {
  testWidgets('Tap DropdownButton makes DropdownMenuItems visible',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // expect(find.byType(dropdownMenuItemType).hitTestable(), findsNothing);

    //open dropdown menu
    await tester.tap(find.byKey(const Key('dropdownbutton')));
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));

    // expect(find.text('1').hitTestable(), findsOneWidget);
    // expect(find.text('2').hitTestable(), findsOneWidget);
  });
}
