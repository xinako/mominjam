import 'package:sqflite/sqflite.dart';

abstract class LocalDB {
  initialDb() {}

  onConfigure(Database db) {}

  onCreate(Database db, int version) {}

  onUpgrade(Database db, int oldVersion, int newVersion) {}

  readAllUsers() {}

  insertData(String username) {}

  currentUsersBank(String username) {}

  currentUserid(String username) {}

  userHistory() {}

  mydeleteDatabase() {}

  readBankStatement(String username) {}
}
