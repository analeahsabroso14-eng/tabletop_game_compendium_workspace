import 'package:tabletop_api/tabletop_api.dart';

Future<void> main() async {
  final api = TabletopApi();

  try {
    final spells = await api.fetchSpells();
    print('Fetched ${spells.length} spells!');
    print('First 5 spells:');
    for (var spell in spells.take(5)) {
      print(' - $spell');
    }
  } catch (e) {
    print('Error: $e');
  }
}
