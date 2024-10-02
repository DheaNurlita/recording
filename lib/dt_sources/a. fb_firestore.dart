part of '_index.dart';

final x1fbFirestore = RM.inject(
  () => FbFirestore(),
  debugPrintWhenNotifiedPreMessage: '',
);

class FbFirestore {
  Future<QuerySnapshot<Map<String, dynamic>>> readCollection(String collProduct) async {
    final result = await FirebaseFirestore.instance.collection(collProduct).get();

    return result;
  }

  Future<void> create(String collProduct, String docId, Map<String, dynamic> data) async {
    await FirebaseFirestore.instance.collection(collProduct).doc(docId).set(data);
  }
}
