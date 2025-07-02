import 'package:firebase_database/firebase_database.dart';

class FirebaseDbService {
  FirebaseDatabase? db;

  void init() {
    db = FirebaseDatabase.instance;
  }

  void saveToDb(){
    
  }
}