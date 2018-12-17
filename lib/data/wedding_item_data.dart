class WeddingItem {
  final String name;
  final String money;
  final String time;

  const WeddingItem({this.name, this.money, this.time});
}

abstract class WeddingItemRepository {
  Future<List<WeddingItem>> fetchWeddingItemList();
}

class FetchWeddingItemException implements Exception {
  String _message;

  FetchWeddingItemException(this._message);

  @override
  String toString() {
    return 'FetchWeddingItemException{_message: $_message}';
  }
}
