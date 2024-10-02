part of '_index.dart';

class ProductAddCtrl {
  init() => logxx.i(ProductAddCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<void> createOne() async {
    final id = const Uuid().v1();
    final data = Models(
      id: id,
      price: Random().nextInt(100),
      quantity: Random().nextInt(100),
      description: generateWordPairs().take(8).join(' '),
      name: generateWordPairs().take(1).join(' '),
      createdAt: DateTime.now().toString(),
      imageUrl: '',
    );

    // await FirebaseFirestore.instance.collection('products').doc().set(data.toMap());
    Serv.product.createOne(data);

    _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, data);
    nav.back();
  }
}
