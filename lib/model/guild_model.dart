
import 'package:flutter_application_2/model/character_model.dart';

class Guild {
  final String id;
  final String name;
  final Character members;

  Guild({
    required this.id,
    required this.name,
    required this.members,
  });

  factory Guild.fromJson(Map<String, dynamic> json) {
    return Guild(
      id: json['id'],
      name: json['name'],
      members: (json['members']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'members': members,
    };
  }
}