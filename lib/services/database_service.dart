import 'package:flutter/material.dart';
import 'package:loono/models/todo.dart';
import 'package:loono/services/db/database.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseService {
  late AppDatabase _engine;
  late final TodosDao todos;

  Future<void> init(String key) async {
    try {
      await (await getApplicationSupportDirectory()).create(recursive: true);
    } catch (_) {
      debugPrint('directory could not be created');
    }
    _engine = AppDatabase('app.db', key);
    todos = _engine.todosDao;
  }

  Future<void> clearDb() {
    return _engine.deleteAllData();
  }
}
