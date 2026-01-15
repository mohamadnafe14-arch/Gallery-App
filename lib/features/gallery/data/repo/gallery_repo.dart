import 'package:dartz/dartz.dart';
import 'package:gallery_app/core/errors/failure.dart';
import 'package:gallery_app/core/services/permissions_service.dart';
import 'package:gallery_app/features/gallery/data/models/gallery_image_model.dart';

abstract class GalleryRepo {
  final PermissionsService permissionsService;
  GalleryRepo(this.permissionsService);
  Future<Either<Failure, List<GalleryImageModel>>> getGalleryImages();
}
