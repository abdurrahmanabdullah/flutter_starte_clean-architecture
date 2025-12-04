abstract class ApiEndpoints {
  /// Auth
  static const String login = 'auth/login';

  /// RefreshToken
  static const String refreshToken = 'api/User/RefreshToken';

  /// Dashboard
  static const String getUserProfile = 'auth/me';

  /// Paginated posts
  static const String getPaginatedPosts = 'posts?limit={limit}&skip={skip}';

  /// Notification
  static const String notificationList =
      'packages/core_sdk_impl/assets/json/notifications.json';
}
