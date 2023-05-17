part of '../_index.dart';

class RestEditDelta extends StatelessWidget {
  const RestEditDelta({Key? key}) : super(key: key);

  RestEditCtrl get ct => Ctrl.restEdit;
  RestEditData get dt => Data.restEdit.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForm,
      builder: () {
        return Column(
          children: [
            OnFormFieldBuilder<String?>(
              listenTo: dt.rxGender.st,
              inputDecoration: InputDecoration(
                errorText: dt.rxGender.st.error,
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
              listenTo: dt.rxStatus.st,
              inputDecoration: InputDecoration(
                errorText: dt.rxStatus.st.error,
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
