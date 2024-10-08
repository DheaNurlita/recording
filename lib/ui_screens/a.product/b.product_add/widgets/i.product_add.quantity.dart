part of '../_index.dart';

class AddQuantity extends StatelessWidget {
  const AddQuantity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnBuilder(
      listenTo: _dt.rxForm,
      builder: () => Column(
        children: [
          TextField(
            controller: _dt.rxQuantity.controller,
            focusNode: _dt.rxQuantity.focusNode,
            onEditingComplete: () => _dt.rxDsesc.focusNode.requestFocus(),
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: const Text('Masukan Quantity'),
              hintText: 'Quantity',
              errorText: _dt.rxQuantity.error,
              isDense: true,
            ),
          )
        ],
      ),
    );
  }
}
