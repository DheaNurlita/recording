part of '../_index.dart';

class AddSubmit extends StatelessWidget {
  const AddSubmit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => OnFormSubmissionBuilder(
        listenTo: _dt.rxForm,
        onSubmitting: () => const Center(
          child: CircularProgressIndicator(),
        ),
        child: ElevatedButton(
          onPressed: () {
            _ct.submit();
          },
          child: const Text(
            "submit",
          ),
        ),

        // OutlinedButton(
        //   onPressed: _dt.rxForm.isDirty && _dt.rxForm.isValid
        //       ? () {
        //           _ct.submit();
        //         }
        //       : null,
        //   child: const Text('Submit'),
        // ),
      ),
    );
  }
}
