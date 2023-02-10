part of '_index.dart';

class RestInputCtrl {
  RestInputData get dt => Data.restInput.st;

  init() => logxx.i(RestInputCtrl, '...');

  submit() => dt.rxForm.submit();

  Future<void> pickImages() async {
    dt.rxPickedFile.setState(
      (s) => ImagePicker().pickImage(source: ImageSource.gallery),
    );
  }

  Future<void> uploadImage() async {
    // todo: don't forget to modify the key name (ex: "productImage")
    // todo: it is needed by server
    // todo: to identify the data when hanlde the request
    final file = dt.rxPickedFile.st;
    if (file != null) {
      try {
        String fileName = file.path.split('/').last;
        FormData formData = FormData.fromMap({
          "productImage": await MultipartFile.fromFile(
            file.path,
            filename: fileName,
          ),
        });
        final result = await Serv.userx.upload(formData);
        dt.rxImageUrl.setState((s) => result.data['data']['image_url']);
      } catch (obj) {
        Fun.handleException(obj);
      }
    }
  }

  Future<void> createUser() async {
    final userx = Userx(
      name: dt.rxName.value,
      email: dt.rxEmail.value,
      gender: dt.rxGender.value,
      status: dt.rxStatus.value,
    );
    try {
      await Serv.userx.createUser(userx);
      Ctrl.restList.refresh();
      await Future.delayed(400.milliseconds);
      RM.navigate.forceBack();
    } catch (obj) {
      Fun.handleException(obj);
    }
  }
}
