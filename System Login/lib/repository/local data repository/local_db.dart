import 'package:random_date/random_date.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:math';

import 'abstract_db.dart';

class SqlDb extends LocalDB {
  static Database? _usernameDatabase;

  Future<Database?> get usernameDatabase async {
    if (_usernameDatabase == null) {
      _usernameDatabase = await initialDb();
      return _usernameDatabase;
    } else {
      return _usernameDatabase;
    }
  }

  @override
  initialDb() async {
    String databasepath = await getDatabasesPath();
    String path = join(databasepath, 'users.db');
    Database mydb = await openDatabase(path,
        onCreate: onCreate,
        version: 1,
        onUpgrade: onUpgrade,
        onConfigure: _onConfigure);
    return mydb;
  }

  static Future _onConfigure(Database db) async {
    await db.execute('PRAGMA foreign_keys = ON');
  }

  @override
  onCreate(Database db, int version) async {
    await db.execute('''
CREATE TABLE "users"(
"id" INTEGER NOT NULL UNIQUE PRIMARY KEY AUTOINCREMENT,
"username" TEXT NOT NULL 
)
''');

    await db.execute('''
    CREATE TABLE "bank"(
"username" TEXT NOT NULL UNIQUE PRIMARY KEY,
"visa" REAL NOT NULL,
"last_visa_date" TEXT NOT NULL,
"cash" REAL NOT NULL,
"last_cash_date" TEXT NOT NULL 
)
    ''');

    await db.execute(''' 
    CREATE TABLE "spent"(
"username" TEXT NOT NULL UNIQUE PRIMARY KEY,
"spent" REAL NOT NULL,
"last_update" TEXT NOT NULL
)
    ''');
  }

  @override
  onUpgrade(Database db, int oldVersion, int newVersion) {}

  @override
  readAllUsers() async {
    Database? mydb = await usernameDatabase;
    List<Map> response = await mydb!.rawQuery("SELECT * FROM 'test'");
    return response;
  }

  @override
  insertData(String username) async {
    Database? mydb = await usernameDatabase;
    int cash = Random().nextInt(1000) + 1;
    int visa = Random().nextInt(1000) + 1;

    if (username.contains('@')) {
      username = username.substring(0, username.indexOf('@'));
    }
    int response = await mydb!.rawInsert(
        "INSERT OR IGNORE INTO 'users' ('username') VALUES ('$username')");
    var randomDate1 = RandomDate.withStartYear(2020);
    var randomDate2 = RandomDate.withStartYear(2020);
    String last_cash_date =
        '${randomDate1.random().day}/${randomDate1.random().month}';
    String last_vis_date =
        '${randomDate2.random().day}/${randomDate2.random().month}';

     await mydb.rawInsert(
        "INSERT OR IGNORE INTO 'bank' ('username', 'visa' , 'last_visa_date' , 'cash' , 'last_cash_date') VALUES ('$username' ,'$visa', '$last_vis_date', '$cash' ,'$last_cash_date' )");

     await mydb.rawInsert(
        "INSERT OR IGNORE INTO 'spent' ('username', 'spent' , 'last_update') VALUES ('$username' ,'$visa','$last_cash_date')");
    return response;
  }

  @override
  currentUsersBank(String username) async {
    Database? mydb = await usernameDatabase;
    List<Map> response = await mydb!
        .rawQuery("SELECT * FROM 'bank' WHERE username=?", [username]);
    return response;
  }

  @override
  currentUserid(String username) async {
    Database? mydb = await usernameDatabase;
    List<Map> response = await mydb!.rawQuery(
        "SELECT * FROM 'users' WHERE username=? LIMIT 1", [username]);
    return response[0];
  }

  @override
  userHistory() async {
    Database? mydb = await usernameDatabase;
    List<Map> response = await mydb!.rawQuery("SELECT * FROM 'spent'");
    return response;
  }

  @override
  mydeleteDatabase() async {
    String databasepath = await getDatabasesPath();
    String path = join(databasepath, 'users.db');
    await deleteDatabase(path);
  }

  @override
  readBankStatement(String username) async {
    Database? mydb = await usernameDatabase;
    List<Map> response = await mydb!
        .rawQuery("SELECT * FROM 'bank' WHERE username=? ", [username]);
    return response[0];
  }
}
