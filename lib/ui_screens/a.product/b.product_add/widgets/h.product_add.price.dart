part of '../_index.dart';

class AddPrice extends StatelessWidget {
  const AddPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnBuilder(
      listenTo: _dt.rxForm,
      builder: () => Column(
        children: [
          TextField(
            controller: _dt.rxPrice.controller,
            focusNode: _dt.rxPrice.focusNode,
            onEditingComplete: () => _dt.rxQuantity.focusNode.requestFocus(),
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: const Text('Masukan Price'),
              hintText: 'Price',
              errorText: _dt.rxPrice.error,
              isDense: true,
            ),
          )
        ],
      ),
    );
  }
}
