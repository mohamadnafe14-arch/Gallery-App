# 📸 Gallery App

A modern, feature-rich Flutter gallery application that provides a seamless experience for browsing and viewing device photos with a beautiful dark-themed interface.

## ✨ Features

- **📱 Device Photo Access**: Seamlessly fetch and display photos from device storage
- **🎨 Modern UI**: Beautiful dark-themed interface with smooth animations
- **🔍 Image Preview**: Full-screen image viewing with zoom and pan capabilities
- **🎭 Hero Animations**: Smooth transitions between gallery grid and image preview
- **⚡ Performance Optimized**: Efficient image loading with thumbnail caching
- **🔐 Permission Handling**: Robust permission management for media access
- **🏗️ Clean Architecture**: Well-structured codebase following best practices

## 🛠️ Tech Stack

### Core Framework
- **Flutter SDK**: ^3.9.2
- **Dart**: Latest stable version

### State Management
- **flutter_bloc**: ^8.1.3 - BLoC pattern for state management
- **bloc**: ^8.1.4 - Core BLoC library
- **equatable**: ^2.0.5 - Value equality for state comparison

### Navigation
- **go_router**: ^17.0.1 - Declarative routing solution

### Image & Media
- **photo_manager**: ^3.0.0 - Access device photos and albums
- **photo_manager_image_provider**: ^2.2.0 - Optimized image provider

### Dependency Injection
- **get_it**: ^9.2.0 - Service locator for dependency injection

### Utilities
- **dartz**: ^0.10.1 - Functional programming (Either type for error handling)
- **cupertino_icons**: ^1.0.8 - iOS-style icons

## 📁 Project Structure

```
lib/
├── core/
│   ├── errors/
│   │   └── failure.dart                 # Error handling classes
│   ├── services/
│   │   └── permissions_service.dart     # Permission management
│   └── utils/
│       ├── app_router.dart              # App navigation configuration
│       └── dependecy_injection.dart     # DI setup
│
├── features/
│   ├── gallery/
│   │   ├── data/
│   │   │   ├── models/
│   │   │   │   └── gallery_image_model.dart
│   │   │   └── repo/
│   │   │       ├── gallery_repo.dart
│   │   │       └── gallery_repo_impl.dart
│   │   └── presentation/
│   │       ├── cubit/
│   │       │   └── gallery_cubit/
│   │       │       ├── gallery_cubit.dart
│   │       │       └── gallery_state.dart
│   │       └── views/
│   │           ├── gallery_view.dart
│   │           ├── image_view.dart
│   │           └── widgets/
│   │               ├── gallery_error_body.dart
│   │               ├── gallery_grid_view.dart
│   │               ├── gallery_loading_body.dart
│   │               ├── gallery_view_body.dart
│   │               ├── grid_item.dart
│   │               └── image_view_body.dart
│   │
│   └── splash/
│       └── presentation/
│           └── views/
│               ├── splash_view.dart
│               └── widgets/
│                   ├── slider_text.dart
│                   └── splash_view_body.dart
│
└── main.dart                            # App entry point
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (^3.9.2 or higher)
- Dart SDK
- Android Studio / VS Code
- Android SDK (for Android development)
- Xcode (for iOS development - macOS only)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/mohamadnafe14-arch/Gallery-App.git
   cd gallery_app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

## 📱 Platform Configuration

### Android

The app requires the following permissions in `AndroidManifest.xml`:

```xml
<uses-permission android:name="android.permission.READ_MEDIA_IMAGES"/>
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"
    android:maxSdkVersion="32"/>
```

**Minimum SDK**: API 21 (Android 5.0)

### iOS

Add the following to your `Info.plist`:

```xml
<key>NSPhotoLibraryUsageDescription</key>
<string>This app needs access to your photo library to display images</string>
```

## 🏗️ Architecture

This project follows **Clean Architecture** principles with **BLoC** pattern:

### Layers

1. **Presentation Layer**
   - UI components (Views & Widgets)
   - BLoC/Cubit for state management
   - User interaction handling

2. **Data Layer**
   - Repository implementations
   - Data models
   - External data sources (photo_manager)

3. **Core Layer**
   - Shared utilities
   - Error handling
   - Services (permissions, etc.)

### Design Patterns

- **BLoC Pattern**: For predictable state management
- **Repository Pattern**: Abstract data sources
- **Dependency Injection**: Using GetIt for loose coupling
- **Either Pattern**: Functional error handling with Dartz

## 🎯 Key Features Implementation

### Permission Handling
The app uses a dedicated `PermissionsService` to handle media access permissions gracefully across different Android versions.

### Image Loading
- Utilizes `photo_manager` for efficient device photo access
- Implements thumbnail loading for grid view performance
- Full-resolution loading for image preview

### Navigation
- Declarative routing with `go_router`
- Three main routes: Splash → Gallery → Image View
- Type-safe navigation with model passing

### State Management
- Centralized state with BLoC pattern
- Reactive UI updates
- Clear separation of business logic

## 🧪 Testing

Run tests with:

```bash
flutter test
```

## 📦 Build

### Android APK
```bash
flutter build apk --release
```

### Android App Bundle
```bash
flutter build appbundle --release
```

### iOS
```bash
flutter build ios --release
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👨‍💻 Author

**Mohamed Nafe**
- GitHub: [@mohamadnafe14-arch](https://github.com/mohamadnafe14-arch)

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- photo_manager package contributors
- BLoC library maintainers

## 📞 Support

If you have any questions or need help, please open an issue in the repository.

---

**Made with ❤️ using Flutter**
