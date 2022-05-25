part of '_index.dart';

class FbStorageMock implements FbStorage {
  @override
  final instance = MockFirebaseStorage();

  @override
  Future<Map<String, String>> uploadFiles(Map<String, String> images) async {
    Map<String, String> imagesWithUrls = {};
    await Future.wait(images.entries.map((e) async {
      return imagesWithUrls[e.key] = await uploadFile(e.key, e.value);
    }));
    return imagesWithUrls;
  }

  @override
  Future<String> uploadFile(
    String ref,
    String path,
  ) async {
    final task = instance.ref(ref).putFile(File(path));
    final snapshot = await task;
    final bytesTransferred = snapshot.bytesTransferred;
    final url = await snapshot.ref.getDownloadURL();
    loggerx(FbStorage).i('$ref [$bytesTransferred bytes] uploaded.');
    return url;
  }

  @override
  Future<String> getUrl(String ref) async {
    return await instance.ref(ref).getDownloadURL();
  }

  @override
  Future<void> deleteFolder(String folder) async {
    ListResult result = await instance.ref(folder).listAll();
    for (var ref in result.items) {
      instance.ref(ref.fullPath).delete().then((_) {
        loggerx(FbStorage).i('${ref.fullPath} deleted.');
      });
    }
  }

  @override
  Future<void> delete(String ref) async {
    return await instance.ref(ref).delete();
  }
}
