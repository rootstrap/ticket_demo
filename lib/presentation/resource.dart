enum Status { loading, success, error }

class Resource<T> {
  final Status status;
  final T? data;
  final String? error;

  Resource._(this.status, this.data, this.error);

  factory Resource.loading() => Resource._(Status.loading, null, null);

  factory Resource.success({T? data}) => Resource._(Status.success, data, null);

  factory Resource.error({T? data, String? error}) => Resource._(Status.error, data, error);

  V map<V>({
    required V Function(T? data) onSuccess,
    required V Function() onLoading,
    required V Function(T? data, String? error) onError,
  }) {
    switch (status) {
      case Status.loading:
        return onLoading();
      case Status.success:
        return onSuccess(data);
      case Status.error:
        return onError(data, error);
    }
  }
}
