class Character {
  final String id;
  final String name;
  final String role;
  final int level;

  Character({
    required this.id,
    required this.name,
    required this.role,
    required this.level,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['id'],
      name: json['name'],
      role: json['role'],
      level: json['level'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'role': role,
      'level': level,
    };
  }
}