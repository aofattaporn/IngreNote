/// ข้อมูลเมนู
class Menu {
  final String id;
  final String title;
  final DateTime date;
  final int servings;
  final DateTime? createDatetime;

  Menu({
    required this.id,
    required this.title,
    required this.date,
    required this.servings,
    this.createDatetime,
  });

  factory Menu.fromJson(Map<String, dynamic> json) {
    return Menu(
      id: json['id'] as String,
      title: json['title'] as String,
      date: DateTime.parse(json['date'] as String),
      servings: json['servings'] as int,
      createDatetime:
          json['createDatetime'] != null
              ? DateTime.parse(json['createDatetime'] as String)
              : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'date': date.toIso8601String(),
      'servings': servings,
      'createDatetime': createDatetime?.toIso8601String(),
    };
  }
}

Menu sampleMenu() {
  return Menu(
    id: "1",
    title: "กะเพราไก่",
    date: DateTime.now(),
    servings: 4,
    createDatetime: DateTime.now(),
  );
}
