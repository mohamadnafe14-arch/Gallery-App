import 'package:flutter/widgets.dart';
import 'package:gallery_app/features/gallery/data/models/gallery_image_model.dart';
import 'package:gallery_app/features/gallery/presentation/views/widgets/grid_item.dart';

class GalleryGridView extends StatelessWidget {
  const GalleryGridView({super.key, required this.images});
  final List<GalleryImageModel> images;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) =>
          GridItem(galleryImageModel: images[index]),
    );
  }
}
