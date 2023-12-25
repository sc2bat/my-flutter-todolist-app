// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:hive/hive.dart';

part 'todolist.g.dart';

@HiveType(typeId: 0)
class Todo extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String? title;
  @HiveField(2)
  String? subtitle;
  @HiveField(3)
  int? dateTime;
  @HiveField(4)
  bool isDone;
  Todo({
    required this.id,
    this.title,
    this.subtitle,
    this.dateTime,
    required this.isDone,
  });

  Todo copyWith({
    int? id,
    String? title,
    String? subtitle,
    int? dateTime,
    bool? isDone,
  }) {
    return Todo(
      id: id ?? this.id,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      dateTime: dateTime ?? this.dateTime,
      isDone: isDone ?? this.isDone,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'dateTime': dateTime,
      'isDone': isDone,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      id: map['id'] as int,
      title: map['title'] != null ? map['title'] as String : null,
      subtitle: map['subtitle'] != null ? map['subtitle'] as String : null,
      dateTime: map['dateTime'] != null ? map['dateTime'] as int : null,
      isDone: map['isDone'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Todo.fromJson(String source) =>
      Todo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Todo(id: $id, title: $title, subtitle: $subtitle, dateTime: $dateTime, isDone: $isDone)';
  }

  @override
  bool operator ==(covariant Todo other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.subtitle == subtitle &&
        other.dateTime == dateTime &&
        other.isDone == isDone;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        subtitle.hashCode ^
        dateTime.hashCode ^
        isDone.hashCode;
  }
}
