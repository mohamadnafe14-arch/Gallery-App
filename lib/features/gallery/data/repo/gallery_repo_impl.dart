import 'package:gallery_app/features/gallery/data/models/gallery_image_model.dart';
import 'package:gallery_app/features/gallery/data/repo/gallery_repo.dart';
import 'package:photo_manager/photo_manager.dart';

class GalleryRepoImpl implements GalleryRepo {
  @override
  Future<List<GalleryImageModel>> getGalleryImages() async {
    List<AssetPathEntity> album = await PhotoManager.getAssetPathList(
      type: RequestType.image,
    );
    List<AssetEntity> images = await album[0].getAssetListPaged(
      page: 0,
      size: 100,
    );
    return images.map((e) => GalleryImageModel.fromAsset(e)).toList();
  }
}
