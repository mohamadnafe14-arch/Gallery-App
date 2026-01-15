import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/features/gallery/presentation/cubit/gallery_cubit/gallery_cubit.dart';
import 'package:gallery_app/features/gallery/presentation/views/widgets/gallery_error_body.dart';
import 'package:gallery_app/features/gallery/presentation/views/widgets/gallery_grid_view.dart';
import 'package:gallery_app/features/gallery/presentation/views/widgets/gallery_loading_body.dart';

class GalleryViewBody extends StatelessWidget {
  const GalleryViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GalleryCubit, GalleryState>(
      builder: (context, state) {
        if (state is GalleryLoading) {
          return const GalleryLoadingBody();
        } else if (state is GalleryLoaded) {
          return GalleryGridView(images: state.images);
        } else if (state is GalleryError) {
          return GalleryErrorBody(errorMessage: state.message);
        } else if (state is GalleryPermissionDenied) {
          return GalleryErrorBody(errorMessage: "Please Allow Permission");
        } else {
          return const GalleryLoadingBody();
        }
      },
    );
  }
}
