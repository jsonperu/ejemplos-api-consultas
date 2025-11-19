import 'dart:convert';
import 'dart:io';

const token = '<token>';
const url = 'https://api.json.pe/api/dni';

Future<void> main() async {
  final client = HttpClient();
  final request = await client.postUrl(Uri.parse(url));
  request.headers.set(HttpHeaders.authorizationHeader, 'Bearer $token');
  request.headers.set(HttpHeaders.contentTypeHeader, 'application/json');
  request.add(utf8.encode(jsonEncode({'dni': '27427864'})));

  final response = await request.close();
  final body = await utf8.decoder.bind(response).join();

  if (response.statusCode >= 400) {
    throw HttpException('Error ${response.statusCode}: $body');
  }

  print(body);
}
