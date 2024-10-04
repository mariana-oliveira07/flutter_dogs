import 'package:flutter_dogs/core/database_helper.dart';
import 'package:flutter_dogs/data/models/dog_model.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DogRepository {
  Future<void> insertDog(Dog dog) async {
    final db = await DatabaseHelper.initDb();
    await db.insert(
      "dogs",
      dog.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Dog>> getDogs() async {
    final db = await DatabaseHelper.initDb();
    final List<Map<String, Object?>> dogsMaps = await db.query("dogs");
    return dogsMaps.map((map) {
      return Dog(
          id: map["id"] as int,
          name: map["name"] as String,
          age: map["age"] as int);
    }).toList();
  }
}
