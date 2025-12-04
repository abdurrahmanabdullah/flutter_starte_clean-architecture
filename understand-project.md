# Flutter Starter Project Structure

This document provides a high-level overview of the project's structure, which is based on the principles of Clean Architecture. The goal is to separate concerns, making the codebase more modular, scalable, and maintainable.

## Core Principles

- **Clean Architecture:** The project is divided into three main layers: Presentation, Domain, and Data.
- **Modularity:** Features and layers are encapsulated in local packages (`packages/`).
- **Dependency Injection:** `get_it` and `injectable` are used to provide dependencies, promoting loose coupling.
- **Environment-specific Configurations:** The application can be run in different environments (e.g., `dev`, `prod`) with different configurations.

## Directory and Layer Breakdown

### 1. Presentation Layer (`lib/`)

This is the top-level layer that the user interacts with. It is responsible for the UI and the UI-level state management.

- `lib/main.dart`: The entry point of the application which sets up the correct environment.
- `lib/mode/`: Contains environment-specific configurations.
  - `env.dart`: Abstract class for environment setup.
  - `dev/` & `prod/`: Concrete implementations for development and production environments. This is where different API base URLs or logging configurations are set.
- `lib/src/application.dart`: The root widget of the application, where `MaterialApp.router` is configured with themes, routes, and global `BlocProvider`s.
- `lib/src/bootstrap.dart`: Handles the initialization of all services and dependencies for the app using `get_it`.
- `lib/src/blocs/`: Contains the business logic components (BLoCs/Cubits) for managing the state of the UI. They respond to UI events and interact with the Domain layer.
- `lib/src/ui/`: Contains all the widgets and screens that make up the user interface.
- `lib/src/routes/`: Defines the application's navigation routes using `go_router`.
- `lib/src/extensions/`, `lib/src/utils/`, etc.: Utility and helper code for the presentation layer.

### 2. Domain Layer (`packages/core_sdk/`)

This is the core of the application. It contains the business logic and rules, independent of any UI or data source. **This layer should not have any dependency on Flutter.**

- `packages/core_sdk/lib/domain/models/`: Defines the pure Dart models for business objects (e.g., `UserModel`, `ProductModel`).
- `packages/core_sdk/lib/domain/repositories/`: Defines the abstract contracts (interfaces) for data repositories (e.g., `AuthRepository`, `ProfileRepository`). The Presentation layer will use these interfaces.
- `packages/core_sdk/lib/domain/networks/`: Defines the abstract contracts for network-specific actions (e.g., `AuthNetwork` with a `login` method). This separates data fetching logic from local database logic.

### 3. Data Layer (`packages/core_sdk_impl/` & `packages/json_client/`)

This layer is responsible for fetching data from various sources. It provides the concrete implementation of the contracts defined in the Domain Layer.

- `packages/core_sdk_impl/`: The main data layer implementation.
  - `lib/src/repositories/`: Contains the concrete implementation of the repository interfaces from the Domain Layer (e.g., `AuthRepositoryImpl`). These classes often manage data from both a local database and a remote network source.
  - `lib/src/networks/`: Contains implementations of the network contracts from the Domain Layer (e.g., `AuthNetworkImpl`).
  - `lib/src/apis/`: Defines the specific API endpoints. Each class (e.g., `LoginApi`) specifies the HTTP method, path, and request/response objects for a single API call.
  - `lib/src/database/`: Contains the local database setup, including Data Access Objects (DAOs) for interacting with the database (e.g., using Isar).
- `packages/json_client/`: A generic, reusable package for making HTTP requests. The `...Api` classes in `core_sdk_impl` use this client to execute the actual network calls. It is configured in `core_sdk_impl/src/apis/base/base_object_api.dart`.

---

## How to Make an API Call (Step-by-Step)

This guide walks through the process of adding a new API call, following the project's architecture. Let's imagine we want to fetch a user's profile.

### Step 1: Define the Model (Domain Layer)

Create a Dart model for your data in `packages/core_sdk/lib/domain/models/`.

_Example: `packages/core_sdk/lib/domain/models/profile/user_profile.dart`_
```dart
class UserProfile {
  final String id;
  final String name;
  final String email;

  UserProfile({required this.id, required this.name, required this.email});
}
```

### Step 2: Define the Network Contract (Domain Layer)

Define the method that will fetch the data in a network interface.

_Example: `packages/core_sdk/lib/domain/networks/profile_network.dart`_
```dart
abstract class ProfileNetwork {
  Future<Either<FailureModel, UserProfile>> getProfile(String userId);
}
```

### Step 3: Create the API Endpoint Class (Data Layer)

Create a class that defines the specific API endpoint. This class will live in `packages/core_sdk_impl/lib/src/apis/`.

_Example: `packages/core_sdk_impl/lib/src/apis/profile/get_profile_api.dart`_
```dart
@singleton
class GetProfileApi extends BaseJsonObjectApi<EmptyRequest, ProfileResponse> {
  GetProfileApi()
    : super(
        path: ApiEndpoints.profile, // e.g., '/users/{userId}'
        method: ApiMethod.get,
        sendToken: true, // This endpoint requires authentication
      );

  // The 'call' method will trigger 'apiCall' from the base class
  Future<Either<FailureModel, ProfileResponse>> call({required String userId}) {
    return apiCall(
      pathParams: {'userId': userId}, // For replacing {userId} in the path
      req: const EmptyRequest(),
    );
  }

  @override
  ProfileResponse convertResponse(Map<String, dynamic> json) {
    return ProfileResponse.fromJson(json); // Uses a generated fromJson
  }
}
```
*Note: You would also create `ProfileResponse` with its own `fromJson` factory.*

### Step 4: Implement the Network Contract (Data Layer)

Provide the concrete implementation for the network contract defined in Step 2.

_Example: `packages/core_sdk_impl/lib/src/networks/profile_network_impl.dart`_
```dart
@Singleton(as: ProfileNetwork)
class ProfileNetworkImpl implements ProfileNetwork {
  @override
  Future<Either<FailureModel, UserProfile>> getProfile(String userId) async {
    // Get the API class from the service locator
    final getProfileApi = DataGetIt.shared.get<GetProfileApi>();

    // Call the API and handle the response
    final response = await getProfileApi.call(userId: userId);

    return response.fold(
      (failure) => Left(failure.toModel()),
      (profileResponse) => Right(profileResponse.toModel()), // Convert response to domain model
    );
  }
}
```

### Step 5: Call from the BLoC (Presentation Layer)

Finally, use the network contract from your BLoC/Cubit to fetch the data and manage the UI state.

_Example: `lib/src/blocs/profile/profile_cubit.dart`_
```dart
@injectable
class ProfileCubit extends Cubit<ProfileState> {
  final ProfileNetwork _profileNetwork; // Injected dependency

  ProfileCubit(this._profileNetwork) : super(ProfileInitial());

  Future<void> fetchUserProfile(String userId) async {
    emit(ProfileLoading());
    final result = await _profileNetwork.getProfile(userId);
    result.fold(
      (failure) => emit(ProfileError(failure.message)),
      (userProfile) => emit(ProfileLoaded(userProfile)),
    );
  }
}
```

This structured approach ensures that every part of the process is decoupled and testable, making the codebase robust and easy to maintain.