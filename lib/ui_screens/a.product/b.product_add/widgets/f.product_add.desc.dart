part of '../_index.dart';

class AddDescription extends StatelessWidget {
  const AddDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnBuilder(
      listenTo: _dt.rxForm,
      builder: () => Column(
        children: [
          TextField(
            controller: _dt.rxDsesc.controller,
            focusNode: _dt.rxDsesc.focusNode,
            onEditingComplete: () => _dt.rxPrice.focusNode.requestFocus(),
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              label: const Text('Masukan deskripsi'),
              hintText: 'deskripsi',
              errorText: _dt.rxDsesc.error,
              isDense: true,
            ),
          )
        ],
      ),
    );
  }
}
