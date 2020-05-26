import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

import 'package:observing/observing.dart';

import 'stores/view_model.dart';

void main() {
  testWidgets(
    'Observing rebuilds on provided observable changes',
    (tester) async {
      final key = UniqueKey();
      final viewModel = ViewModel();

      await tester.pumpWidget(
        Provider.value(
          value: viewModel,
          child: Observing<ViewModel>(
            builder: (context, vm) => GestureDetector(
              onTap: vm.increment,
              child: Text(
                vm.value.toString(),
                key: key,
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
        ),
      );

      expect(tester.widget<Text>(find.byKey(key)).data, equals('0'));

      await tester.tap(find.byKey(key));

      expect(viewModel.value, 1);

      await tester.pump();

      expect(tester.widget<Text>(find.byKey(key)).data, equals('1'));
    },
  );
}
