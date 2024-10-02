part of '_index.dart';

class ProductListData {
  final rxTitle = 'Product List'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxProductList = Prov.product.st.rxProductList;
  final rxProductLoader = Prov.product.st.rxProductLoader;
}
