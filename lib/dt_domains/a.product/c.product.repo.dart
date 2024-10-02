part of '_index.dart';

class ProductRepo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from ProductRepo');
    return x;
  }

  Future<List<Models>> readProduct() async {
    List<Models> products = [];
    final result = await x1fbFirestore.st.readCollection(_pv.collProduct);

    for (var element in result.docs) {
      products.add(Models.fromMap(element.data()));
    }

    return products;
  }
}
