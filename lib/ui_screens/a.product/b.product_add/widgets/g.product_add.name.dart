part of '../_index.dart';

class AddName extends StatelessWidget {
  const AddName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnBuilder(
      listenTo: _dt.rxForm,
      builder: () => Column(
        children: [
          TextField(
            controller: _dt.rxName.controller,
            focusNode: _dt.rxName.focusNode,
            onEditingComplete: () => _dt.rxDsesc.focusNode.requestFocus(),
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              label: const Text('Masukan Nama'),
              hintText: 'Nama',
              errorText: _dt.rxName.error,
              isDense: true,
            ),
          )
        ],
      ),
    );
  }
}
