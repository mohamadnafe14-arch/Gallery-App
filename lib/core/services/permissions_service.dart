import 'package:photo_manager/photo_manager.dart';

class PermissionsService {
  Future<bool> requestPermission() async {
    final result = await PhotoManager.requestPermissionExtend();
    return result.isAuth;
  }
}
