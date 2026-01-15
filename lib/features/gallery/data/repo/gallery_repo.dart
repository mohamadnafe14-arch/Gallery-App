import 'package:gallery_app/features/gallery/data/models/gallery_image_model.dart';

abstract class GalleryRepo {
  Future<List<GalleryImageModel>> getGalleryImages();
}