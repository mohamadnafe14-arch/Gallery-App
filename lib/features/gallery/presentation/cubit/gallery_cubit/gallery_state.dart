part of 'gallery_cubit.dart';

sealed class GalleryState extends Equatable {
  const GalleryState();

  @override
  List<Object> get props => [];
}

final class GalleryInitial extends GalleryState {}

final class GalleryLoading extends GalleryState {}

final class GalleryLoaded extends GalleryState {
  final List<GalleryImageModel> images;
  const GalleryLoaded(this.images);
}

final class GalleryError extends GalleryState {
  final String message;
  const GalleryError(this.message);
}

final class GalleryPermissionDenied extends GalleryState {}
