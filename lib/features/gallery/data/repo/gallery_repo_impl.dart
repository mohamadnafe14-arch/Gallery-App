import 'package:dartz/dartz.dart';
import 'package:gallery_app/core/errors/failure.dart';
import 'package:gallery_app/core/services/permissions_service.dart';
import 'package:gallery_app/features/gallery/data/models/gallery_image_model.dart';
import 'package:gallery_app/features/gallery/data/repo/gallery_repo.dart';
import 'package:photo_manager/photo_manager.dart';

class GalleryRepoImpl implements GalleryRepo {
  @override
  final PermissionsService permissionsService;
  GalleryRepoImpl(this.permissionsService);
  @override
  Future<Either<Failure, List<GalleryImageModel>>> getGalleryImages() async {
    if (!(await permissionsService.requestPermission())) {
      return Left(PermissionFailure("Permission Denied"));
    }
    try {
      List<AssetPathEntity> album = await PhotoManager.getAssetPathList(
        type: RequestType.image,
      );
      List<AssetEntity> images = await album[0].getAssetListPaged(
        page: 0,
        size: 100,
      );
      return Right(images.map((e) => GalleryImageModel.fromAsset(e)).toList());
    } on Exception catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
