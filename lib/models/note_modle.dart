import 'package:hive/hive.dart';

part 'note_modle.g.dart';

@HiveType(typeId: 0)
class NoteModle extends HiveObject {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final String content;

  @HiveField(2)
  final String data;

  @HiveField(3)
  final int color;

  NoteModle({
    required this.title,
    required this.content,
    required this.data,
    required this.color,
  });
}
