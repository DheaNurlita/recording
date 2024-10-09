part of '_index.dart';

class ProductRepoMock implements ProductRepo {
  @override
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.wtf('random value coming from ProductRepoMock');
    return x;
  }

  @override
  Future<List<Models>> readProduct() {
    throw UnimplementedError();
  }

  @override
  Future createProduct(Models data) {
    throw UnimplementedError();
  }

  @override
  Future<Models> readDocument(String docId) {
    throw UnimplementedError();
  }
}
