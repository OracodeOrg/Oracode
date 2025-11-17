import 'package:hive/hive.dart';

class StorageService {
  final _userBox = Hive.box('user_data');

  bool getTutorialCompleted() => _userBox.get('tutorialCompleted', defaultValue: false);
  void setTutorialCompleted(bool value) => _userBox.put('tutorialCompleted', value);

  int getLevelsCompleted() => _userBox.get('levelsCompleted', defaultValue: 0);
  void setLevelsCompleted(int value) => _userBox.put('levelsCompleted', value);
}