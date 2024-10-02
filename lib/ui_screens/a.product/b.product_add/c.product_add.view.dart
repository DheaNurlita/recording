part of '_index.dart';

class ProductAddView extends StatelessWidget {
  const ProductAddView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductAddAppbar(),
      ),
      floatingActionButton: const ProductAddFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                // final id = const Uuid().v1();
                // final data = Models(
                //   id: id,
                //   price: Random().nextInt(100),
                //   quantity: Random().nextInt(100),
                //   description: generateWordPairs().take(8).join(' '),
                //   name: generateWordPairs().take(1).join(' '),
                //   createdAt: DateTime.now().toString(),
                //   imageUrl: '',
                // );

                // await FirebaseFirestore.instance.collection('products').doc().set(data.toMap());

                // _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, data);
                // nav.back();
                _ct.createOne();
              },
              child: const Text(
                "create product",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
