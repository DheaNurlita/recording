part of '_index.dart';

class ProductListCtrl {
  init() => logxx.i(ProductListCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<QuerySnapshot<Map<String, dynamic>>> readProduct() async {
    final result = await FirebaseFirestore.instance.collection('products').get();

    for (var element in result.docs) {
      logx.i(element.id);
    }
    return result;
  }
}
