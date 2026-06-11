import 'package:sqflite/sqflite.dart';

class DatabaseHelper{
  static DatabaseHelper? _instance;
  static Database? _database;

  DatabaseHelper._internal();

  factory DatabaseHelper(){
    return _instance ??= DatabaseHelper._internal();
  }

  static const String _tblFavorite = 'tbl_favorite';
  static const String _roomId = "id";

  Future<Database> _initializeDb() async {
    var path = await getDatabasesPath();
    return openDatabase(
      '$path/favorite.db',
      onCreate: (db, version) async{
        await db.execute(
          'CREATE TABLE $_tblFavorite ($_roomId TEXT PRIMARY KEY NOT NULL)',
        );
      },
      version: 1,
    );
  }

  Future<Database> get database async {
    _database ??= await _initializeDb();
    return _database!;
  }

  Future<void> addFavorite(String roomId) async {
    final db = await database;
    await db.insert(
      _tblFavorite, {_roomId: roomId},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<String>> getFavorite() async {
    final db = await database;
    final results = await db.query(_tblFavorite);
    return results.map((row) => row[_roomId] as String).toList();
  }

  Future<Map<String, dynamic>?> getFavoriteById(String id) async {
    final db = await database;
    final results = await db.query(
      _tblFavorite, where: '$_roomId = ?', whereArgs: [id],
    );
    return results.isNotEmpty ? results.first : null;
  }

  Future<void> removeFavoriteById(String id) async {
    final db = await database;
    await db.delete(
      _tblFavorite, where: '$_roomId = ?', whereArgs: [id],
    );
  }

}