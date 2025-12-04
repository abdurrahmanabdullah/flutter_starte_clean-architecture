# Clean Architecture Flutter Starter

A professional Flutter starter template built with Clean Architecture principles, featuring a robust set of tools and libraries for scalable application development.

## 🏗️ Architecture

This project follows Clean Architecture principles with a layered structure:

- **Presentation Layer**: UI components, BLoC Cubits, and routing
- **Domain Layer**: Business logic, entities, and use cases
- **Data Layer**: Repositories, data sources, and API clients

## 📦 Packages & Dependencies

### Core Architecture
- **flutter_bloc**: State management using BLoC pattern with Cubits
- **get_it**: Dependency injection and service location
- **injectable**: Code generation for get_it dependency injection
- **equatable**: Value comparison for immutable objects
- **dartz**: Functional programming utilities (Either, Option)

### Data Persistence
- **Isar**: High-performance local database
- **isar_e2m**: Custom Isar wrapper package
- **shared_preferences**: Simple key-value storage
- **json_client**: Custom HTTP client for API communication

### UI & Styling
- **go_router**: Declarative routing solution
- **flutter_screenutil**: Responsive UI adaptation
- **flutter_svg**: SVG image support
- **shimmer_animation**: Loading placeholder animations
- **auto_size_text**: Auto-resizing text widgets
- **gap**: Convenient spacing widget
- **google_fonts**: Custom font support

### Development Tools
- **freezed**: Code generation for immutable classes
- **build_runner**: Code generation runner
- **logger**: Flexible logging utility
- **intl**: Internationalization and localization

### Utilities
- **connectivity_plus**: Network status monitoring
- **path_provider**: File system path access
- **permission_handler**: Runtime permission handling

## 🚀 Getting Started

### Prerequisites

- Flutter SDK ^3.35.2
- Dart SDK ^3.9.0

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/SabirKhanAkash/flutter-starter.git
   git checkout clean-architecture-bloc-isar-dio
   cd flutter-starter
    ```
2. **Install  dependencies** 

   a. For Windows:
      ```bash
      ./setup_windows.bat
      ```
   
   b. For macOS/Linux:
      ```bash
      chmod +x setup_linux.sh
      ./setup_linux.sh
      ```
4. **Run the application**
    ```bash
    flutter run
    ```
