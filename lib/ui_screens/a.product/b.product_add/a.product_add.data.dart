part of '_index.dart';

class ProductAddData {
  final rxTitle = 'Product Add'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxProductList = Prov.product.st.rxProductList;

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    // ignore: deprecated_member_use
    submit: () async => await _ct.createOne(),
  );

  final rxName = RM.injectTextEditing(validateOnTyping: true, validators: [
    Validate.isNotEmpty,
    Validate.fullName,
  ]);
  final rxDsesc = RM.injectTextEditing(validateOnTyping: true, validators: [
    Validate.isNotEmpty,
    Validate.description,
  ]);
  final rxQuantity = RM.injectTextEditing(validateOnTyping: true, validators: [
    Validate.isNotEmpty,
    Validate.isNumeric,
  ]);
  final rxPrice = RM.injectTextEditing(validateOnTyping: true, validators: [
    Validate.isNotEmpty,
    Validate.isNumeric,
  ]);
}
