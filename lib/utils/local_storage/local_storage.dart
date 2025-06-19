import 'package:get_storage/get_storage.dart';

class SafeSafaiLocalStorage {
  static final SafeSafaiLocalStorage _instance = SafeSafaiLocalStorage._internal();

  factory SafeSafaiLocalStorage() {
    return _instance;
  }

  SafeSafaiLocalStorage._internal();

  final _storage = GetStorage();

  // Generic method to save data
  Future<void> saveData<SafeSafai>(String key, SafeSafai value) async {
    await _storage.write(key, value);
  }

  // Generic method to read data
  SafeSafai? readData<SafeSafai>(String key){
    return _storage.read<SafeSafai>(key);
  }

  // Generic method to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Clear all data in storage
  Future<void> clearAll(String key) async {
    await _storage.erase();
  }
}