import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _database;

  static Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDatabase();
    return _database!;
  }

  static Future<Database> _initDatabase() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'wild_wonder.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDatabase,
    );
  }

  static Future<void> _createDatabase(Database db, int version) async {
    await db.execute(
      '''
      CREATE TABLE feedback(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        message TEXT
      )
      ''',
    );
  }

  static Future<int> insertFeedback(String message) async {
    Database db = await database;
    Map<String, dynamic> feedbackData = {'message': message};
    return await db.insert('feedback', feedbackData);
  }

  static Future<List<Map<String, dynamic>>> getAllFeedback() async {
    Database db = await database;
    return await db.query('feedback');
  }

  static Future<void> closeDatabase() async {
    Database db = await database;
    db.close();
  }
}
