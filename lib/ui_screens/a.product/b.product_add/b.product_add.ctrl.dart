part of '_index.dart';

class ProductAddCtrl {
  init() => logxx.i(ProductAddCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<void> createOne() async {
    final id = const Uuid().v1();
    final data = Models(
      id: id,
      price: int.parse(_dt.rxPrice.value),
      quantity: int.parse(_dt.rxQuantity.value),
      description: _dt.rxDsesc.value,
      name: _dt.rxName.value,
      createdAt: DateTime.now().toString(),
      imageUrl: '',
    );

    // await FirebaseFirestore.instance.collection('products').doc().set(data.toMap());
    Serv.product.createOne(data);

    _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, data);
    nav.back();
  }

  submit() {
    _dt.rxForm.submit();
  }
}
