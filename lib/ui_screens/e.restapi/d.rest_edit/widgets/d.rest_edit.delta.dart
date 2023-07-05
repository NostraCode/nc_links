part of '../_index.dart';

class RestEditDelta extends StatelessWidget {
  const RestEditDelta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () {
        return Column(
          children: [
            OnFormFieldBuilder<String?>(
              listenTo: _dt.rxGender.st,
              inputDecoration: InputDecoration(
                errorText: _dt.rxGender.st.error,
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
              listenTo: _dt.rxStatus.st,
              inputDecoration: InputDecoration(
                errorText: _dt.rxStatus.st.error,
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
