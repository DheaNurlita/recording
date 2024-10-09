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
                    return OnReactive(
                      () => Card(
                        color: Colors.blueGrey.shade700,
                        child: ListTile(
                          onTap: () async {
                            _ct.selectedId(_dt.rxProductList.st[index].id);
                          },
                          selected: _dt.rxSelectedId.st == _dt.rxProductList.st[index].id,
                          selectedColor: Colors.amber,
                          title: Text(_dt.rxProductList.st[index].name),
                          subtitle: Text(_dt.rxProductList.st[index].id),
                        ),
                      ),
                    );
                  },
                )
              ],
            );
          },
        ));
  }
}
