part of '_index.dart';

class Todo {
  final int no;
  final String id;
  final String title;
  final String description;
  final bool completed;
  Todo({
    required this.no,
    required this.id,
    required this.title,
    required this.description,
    this.completed = false,
  });

  static Todo mock([String? id]) {
    return Todo(
      no: 0,
      id: id ?? const Uuid().v4(),
      title: generateWordPairs().take(1).join(' '),
      description: generateWordPairs().take(3).join(' '),
      completed: false,
    );
  }

  Todo copyWith({
    int? no,
    String? id,
    String? title,
    String? description,
    bool? completed,
  }) {
    return Todo(
      no: no ?? this.no,
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      completed: completed ?? this.completed,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'no': no});
    result.addAll({'id': id});
    result.addAll({'title': title});
    result.addAll({'description': description});
    result.addAll({'completed': completed});

    return result;
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      no: map['no']?.toInt() ?? 0,
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      completed: map['completed'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Todo.fromJson(String source) => Todo.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Todo(no: $no, id: $id, title: $title, description: $description, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Todo &&
        other.no == no &&
        other.id == id &&
        other.title == title &&
        other.description == description &&
        other.completed == completed;
  }

  @override
  int get hashCode {
    return no.hashCode ^ id.hashCode ^ title.hashCode ^ description.hashCode ^ completed.hashCode;
  }
}
