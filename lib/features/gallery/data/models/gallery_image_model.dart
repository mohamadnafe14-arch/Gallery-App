import 'package:photo_manager/photo_manager.dart';
class GalleryImageModel {
  final String id;
  final AssetEntity asset;
  GalleryImageModel({required this.id, required this.asset});
  factory GalleryImageModel.fromAsset(AssetEntity asset) {
    return GalleryImageModel(id: asset.id, asset: asset);
  }
}