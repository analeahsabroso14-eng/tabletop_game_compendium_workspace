import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';
import 'exceptions.dart';
import 'models.dart';

class TabletopApiClient {
  final http.Client _client;
  final Logger _logger = Logger('TabletopApiClient');
  static const String _authority = 'www.dnd5eapi.co';

  TabletopApiClient(this._client);

  Future<Spell> fetchSpell(String index) async {
    _logger.info('Initiating connection for spell: $index');
    final uri = Uri.https(_authority, '/api/spells/$index');

    try {
      final response = await _client
          .get(uri)
          .timeout(const Duration(seconds: 5));

      if (response.statusCode != 200) {
        _logger.warning(
          'API responded with error status: ${response.statusCode}',
        );
        throw TabletopException(
          'Remote server rejected transaction (HTTP ${response.statusCode}).',
        );
      }

      final decoded = json.decode(response.body);
      if (decoded is! Map<String, dynamic>) {
        throw TabletopException('Unexpected JSON response payload structure.');
      }

      return Spell.fromJson(decoded);
    } on http.ClientException catch (e) {
      _logger.severe('Network socket transaction failed.', e);
      throw TabletopException('Network communication failure occurred.', e);
    } catch (e) {
      _logger.severe('An unexpected processing failure was intercepted.', e);
      rethrow;
    }
  }
}
