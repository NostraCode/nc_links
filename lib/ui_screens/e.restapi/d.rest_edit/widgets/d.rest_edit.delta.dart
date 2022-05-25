part of '../_index.dart';

class RestEditDelta extends StatelessWidget {
  const RestEditDelta({Key? key}) : super(key: key);

  RestEditCtrl get ct => x1RestEditCtrl;
  RestEditData get dt => x1RestEditData.st;

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
                  DropdownMenuItem(child: Text('female'), value: 'female'),
                  DropdownMenuItem(child: Text('male'), value: 'male'),
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
                  DropdownMenuItem(child: Text('active'), value: 'active'),
                  DropdownMenuItem(child: Text('inactive'), value: 'inactive'),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
