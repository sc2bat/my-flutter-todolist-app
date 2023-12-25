// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Todo {
  int id;
  String? title;
  String? subtitle;
  int? dateTime;
  Todo({
    required this.id,
    this.title,
    this.subtitle,
    this.dateTime,
  });

  Todo copyWith({
    int? id,
    String? title,
    String? subtitle,
    int? dateTime,
  }) {
    return Todo(
      id: id ?? this.id,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      dateTime: dateTime ?? this.dateTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'dateTime': dateTime,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      id: map['id'] as int,
      title: map['title'] != null ? map['title'] as String : null,
      subtitle: map['subtitle'] != null ? map['subtitle'] as String : null,
      dateTime: map['dateTime'] != null ? map['dateTime'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Todo.fromJson(String source) =>
      Todo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Todo(id: $id, title: $title, subtitle: $subtitle, dateTime: $dateTime)';
  }

  @override
  bool operator ==(covariant Todo other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.subtitle == subtitle &&
        other.dateTime == dateTime;
  }

  @override
  int get hashCode {
    return id.hashCode ^ title.hashCode ^ subtitle.hashCode ^ dateTime.hashCode;
  }
}
