part of '../_index.dart';

class RestInputDelta extends StatelessWidget {
  const RestInputDelta({Key? key}) : super(key: key);

  RestInputCtrl get ct => Ctrl.restInput;
  RestInputData get dt => Data.restInput.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnReactive(
          () => OnFormFieldBuilder<String>(
            listenTo: dt.rxGender,
            inputDecoration: InputDecoration(
              errorText: dt.rxGender.error,
              errorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
            ),
            builder: (value, onChanged) {
              return DropdownButtonFormField<String>(
                onChanged: onChanged,
                decoration: const InputDecoration(isDense: true),
                value: value,
                items: const [
                  DropdownMenuItem(value: 'female', child: Text('female')),
                  DropdownMenuItem(value: 'male', child: Text('male')),
                ],
              );
            },
          ),
        ),
        const SizedBoxH(20),
        OnReactive(
          () => OnFormFieldBuilder<String>(
            listenTo: dt.rxStatus,
            inputDecoration: InputDecoration(
              errorText: dt.rxStatus.error,
              errorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
            ),
            builder: (value, onChanged) {
              return DropdownButtonFormField<String>(
                onChanged: onChanged,
                decoration: const InputDecoration(isDense: true),
                value: value,
                items: const [
                  DropdownMenuItem(value: 'active', child: Text('active')),
                  DropdownMenuItem(value: 'inactive', child: Text('inactive')),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
