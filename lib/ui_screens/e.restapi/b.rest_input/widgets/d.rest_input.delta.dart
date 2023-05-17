part of '../_index.dart';

class RestInputDelta extends StatelessWidget {
  const RestInputDelta({Key? key}) : super(key: key);

  RestInputCtrl get ct => Ctrl.restInput;
  RestInputData get dt => Data.restInput.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForm,
      builder: () {
        return Column(
          children: [
            OnFormFieldBuilder<String?>(
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
                  items: ConsList.genders
                      .map((element) => DropdownMenuItem(
                            value: element,
                            child: Text(element),
                          ))
                      .toList(),
                );
              },
            ),
            const SizedBoxH(20),
            OnFormFieldBuilder<String?>(
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
                  items: ConsList.status
                      .map((element) => DropdownMenuItem(
                            value: element,
                            child: Text(element),
                          ))
                      .toList(),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
