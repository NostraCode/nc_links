part of '_index.dart';

class OnNavigateBack {
  OnNavigateBack._();

  static action(RouteData? data) {
    if (data == null) {
      Dialogs.confirmExit();
      return false;
    }
    if (data.location == Routes.injForm) {
      if (x1InjFormData.st.rmForm.isDirty) {
        Dialogs.confirmAction(
          'Form is changed and not submitted yet. Do you want to exit?',
        );
        return false;
      }
    }
    if (data.location == Routes.restInput) {
      if (x1RestInputData.st.rmForm.isDirty) {
        Dialogs.confirmAction(
          'Form is changed and not submitted yet. Do you want to exit?',
        );
        return false;
      }
    }
    return null;
  }
}
