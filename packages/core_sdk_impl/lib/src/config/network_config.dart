class NetworkConfig {
  final String baseUrl;
  final String progressiveSearchUrl;
  final String remoteConfigUrl;
  final Future<Map<String, String>> Function()? getHeaders;

  NetworkConfig({
    required this.baseUrl,
    required this.progressiveSearchUrl,
    required this.remoteConfigUrl,
    this.getHeaders,
  });

  NetworkConfig copyWith({Future<Map<String, String>> Function()? getHeaders}) {
    return NetworkConfig(
      baseUrl: baseUrl,
      progressiveSearchUrl: progressiveSearchUrl,
      getHeaders: getHeaders,
      remoteConfigUrl: remoteConfigUrl,
    );
  }
}
