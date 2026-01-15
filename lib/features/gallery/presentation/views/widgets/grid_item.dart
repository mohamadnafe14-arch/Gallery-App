import 'package:flutter/widgets.dart';
import 'package:gallery_app/features/gallery/data/models/gallery_image_model.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key, required this.galleryImageModel});

  final GalleryImageModel galleryImageModel;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: AssetEntityImage(
        galleryImageModel.asset,
        fit: BoxFit.cover,
        isOriginal: false,
        thumbnailSize: const ThumbnailSize(200, 200),
      ),
    );
  }
}
