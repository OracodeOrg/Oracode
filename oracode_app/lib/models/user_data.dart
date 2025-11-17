import 'package:hive/hive.dart';

part 'user_data.g.dart';

@HiveType(typeId: 0)
class UserData extends HiveObject {
  @HiveField(0)
  bool tutorialCompleted;

  @HiveField(1)
  int levelsCompleted;

  UserData({
    required this.tutorialCompleted,
    required this.levelsCompleted,
  });
}