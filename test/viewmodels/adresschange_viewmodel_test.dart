import 'package:flutter_test/flutter_test.dart';
import 'package:moonlight/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('AdresschangeViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
