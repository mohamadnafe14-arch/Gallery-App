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
  @override
  Future<Either<Failure, List<GalleryImageModel>>> getGalleryImages() async {
    final hasPermission = await permissionsService.requestPermission();
    if (!hasPermission) {
      return Left(PermissionFailure("Permission Denied"));
    }

    try {
      final albums = await PhotoManager.getAssetPathList(
        type: RequestType.image,
      );

      if (albums.isEmpty) {
        return Right([]);
      }

      final images = await albums.first.getAssetListPaged(page: 0, size: 100);

      return Right(images.map(GalleryImageModel.fromAsset).toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
