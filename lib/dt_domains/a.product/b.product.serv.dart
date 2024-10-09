part of '_index.dart';

class ProductServ {
  void init() {
    logxx.i(ProductServ, '...');
  }

  void updateRandom() {
    _pv.rxRandom.st = _rp.giveNewRandom();
  }

  void onSetState() {
    logzz.i(ProductServ, 'rxCounter setState success');
  }

  //*-------------------------------------------------------------------------

  initProduct() async {
    _pv.rxProductLoader.stateAsync = readProduct();
  }

  Future<List<Models>> readProduct() async {
    return await _rp.readProduct();
  }

  addToList(List<Models> moreProduct) async {
    _pv.rxProductList.st = [..._pv.rxProductList.st, ...moreProduct];
  }

  //*-------------------------------------------------------------------------

  createOne(Models data) async {
    await _rp.createProduct(data);
  }

  //*------------------------------------------------------------------------
  initProductDetail() {
    _pv.rxProductDetail.stateAsync = _rp.readDocument(_pv.rxSelectedId.st);
  }

  chooseSelectedId(String id) async {
    // _pv.rxSelectedId.refresh();
    await _pv.rxSelectedId.setState(
      (s) => id,
    );
  }
}
