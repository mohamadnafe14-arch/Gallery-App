import 'package:gallery_app/core/services/permissions_service.dart';
import 'package:gallery_app/features/gallery/data/repo/gallery_repo.dart';
import 'package:gallery_app/features/gallery/data/repo/gallery_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt=GetIt.instance;

void setup() {
  getIt.registerSingleton<PermissionsService>(PermissionsService());
  getIt.registerSingleton<GalleryRepo>(GalleryRepoImpl(getIt.get<PermissionsService>()));
}