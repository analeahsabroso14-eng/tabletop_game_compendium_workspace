import 'exceptions.dart';

class Spell {
  final String id;
  final String name;
  final int level;

  const Spell({
    required this.id,
    required this.name,
    required this.level,
  });

  factory Spell.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'index': String parsedId,
        'name': String parsedName,
        'level': int parsedLevel,
      } =>
        Spell(
          id: parsedId,
          name: parsedName,
          level: parsedLevel,
        ),
      _ => throw TabletopException('Payload failed pattern validation check!'),
    };
  }
}
