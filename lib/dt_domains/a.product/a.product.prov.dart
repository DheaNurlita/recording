part of '_index.dart';

class ProductProv {
  final rxRandom = RM.inject<int>(
    () => 0,
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      onSetState: (p0) => _sv.onSetState(),
    ),
  );

  final collProduct = 'products';

  final rxProductList = RM.inject<List<Models>>(
    () => [],
  );

  final rxProductLoader = RM.injectFuture<List<Models>>(() => Future.value([]),
      sideEffects: SideEffects(
        initState: () => _sv.initProduct(),
        onSetState: (snap) {
          if (snap.hasData) {
            final moreProduct = snap.data;

            _sv.addToList(moreProduct!);
          }
        },
      ));
  final rxSelectedId = RM.inject(
    () => '',
  );

  final rxProductDetail = RM.injectFuture<Models?>(() => Future.value(null),
      sideEffects: SideEffects(
        initState: () => _sv.initProductDetail(),
      ));
}
