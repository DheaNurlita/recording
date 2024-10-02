part of '_index.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: ProductListAppbar(),
        ),
        floatingActionButton: const ProductListFab(),
        body: OnBuilder.all(
          listenToMany: [_dt.rxProductList, _dt.rxProductLoader],
          onWaiting: () => const Center(
            child: CircularProgressIndicator(),
          ),
          onError: (error, refreshError) => const Center(
            child: Text('Error'),
          ),
          onData: (data) {
            return Column(
              children: [
                ...List.generate(
                  _dt.rxProductList.st.length,
                  (index) {
                    return ListTile(
                      title: Text(_dt.rxProductList.st[index].name),
                      subtitle: Text(_dt.rxProductList.st[index].id),
                    );
                  },
                )
              ],
            );
          },
        ));
  }
}
