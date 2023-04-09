class Task {
  final String id;
  final String name;
  final DateTime date;
  bool isCompleted;

  Task({
    required this.id,
    required this.name,
    required this.date,
    this.isCompleted = false,
  });

  Task copyWith({
    String? id,
    String? name,
    DateTime? date,
    bool? isCompleted,
  }) {
    return Task(
      id: id ?? this.id,
      name: name ?? this.name,
      date: date ?? this.date,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  Map<String, Object?> toJson() => {
        'id': id,
        'name': name,
        'date': date,
        'isCompleted': isCompleted,
      };

  static Task fromJson(Map<String, dynamic> json) => Task(
        id: json['id'],
        name: json['name'],
        date: json['date'].toDate(),
        isCompleted: json['isCompleted'],
      );
}
