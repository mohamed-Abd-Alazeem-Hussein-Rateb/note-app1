import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';
part 'note_modle.g.dart';

@HiveType(typeId: 0)
class NoteModle extends HiveObject {
   @HiveField(0)
  final String id;  // حقل معرف فريد
  @HiveField(1)
   String title;
  @HiveField(2)
   String content;
  @HiveField(3)
  final String data;
  @HiveField(4)
   int color;

  NoteModle({
   required this.title,
    required this.content,
    required this.data,
    required this.color,
  }) : id = Uuid().v4();  // توليد معرف فريد عند إنشاء ملاحظة جديدة
}
