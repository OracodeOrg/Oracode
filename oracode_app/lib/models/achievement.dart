import 'package:hive/hive.dart';

part 'achievement.g.dart';

@HiveType(typeId: 1)
class Achievement extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final bool unlocked;

  Achievement({required this.id, required this.name, this.unlocked = false});
}