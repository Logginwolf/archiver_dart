import 'package:sqflite_common/sqflite.dart';

DatabaseFactory? _logginwolfDBFactory;

set logginwolfDBFactory(DatabaseFactory logginwolfDBFactory) {
  _logginwolfDBFactory = logginwolfDBFactory;
}

DatabaseFactory get logginwolfDBFactory {
  if (_logginwolfDBFactory == null) {
    throw StateError("DatabaseFactory must be assigned before accessing database.");
  }

  return _logginwolfDBFactory!;
}