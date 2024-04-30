import 'package:get_storage/get_storage.dart';

class localStorage {
  static final localStorage _instance = localStorage._internal();

  factory localStorage() {
    return _instance;
  }

  localStorage._internal();

  final _storage = GetStorage();

  // Generic method to SAVE data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Generic method to READ data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // Generic method to REMOVE data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Clear All data in Storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}