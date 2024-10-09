part of '_index.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: ProductDetailAppbar(),
        ),
        floatingActionButton: const ProductDetailFab(),
        body: OnBuilder.all(
          listenTo: _dt.rxProductDetail,
          onWaiting: () => const Center(
            child: CircularProgressIndicator(),
          ),
          onError: (error, refreshError) => const Center(
            child: Text('error'),
          ),
          onData: (data) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ini adalah nama : ${data?.name}'),
                Text('ini adalah deskripsi : ${data?.description}'),
                Text('ini adalah price : ${data?.price}'),
              ],
            ),
          ),
        ));
  }
}
