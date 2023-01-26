enum ProviderEvent {
  none,
  login,
  getOtp,
  discovery,
}

///remains same
enum ProviderState {
  none,
  loading,
  noInternet,
  success,
  failed,
  noData,
}

T? cast<T>(x) => x is T ? x : null;