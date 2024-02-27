import 'dart:math';

class NewModelConfig {
  static NewModelConfig to = NewModelConfig();

  // if you using pocketbase, id must 15 characters
  String generateDocId() {
    // return _generateRandomString();
    return DateTime.now().millisecondsSinceEpoch.toString() +
        _generateRandomString(2);
    // return "Sample";
  }
}

String _generateRandomString(int length) {
  const characters =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  final rand = Random();

  return String.fromCharCodes(
    Iterable.generate(
      length,
      (_) => characters.codeUnitAt(rand.nextInt(characters.length)),
    ),
  );
}
