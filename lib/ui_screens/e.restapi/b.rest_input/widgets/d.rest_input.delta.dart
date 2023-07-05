part of '../_index.dart';

class RestInputDelta extends StatelessWidget {
  const RestInputDelta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () {
        return Column(
          children: [
            OnFormFieldBuilder<String?>(
              listenTo: _dt.rxGender,
              inputDecoration: InputDecoration(
                errorText: _dt.rxGender.error,
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
              listenTo: _dt.rxStatus,
              inputDecoration: InputDecoration(
                errorText: _dt.rxStatus.error,
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
