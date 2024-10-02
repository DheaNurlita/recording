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
}
