class ApiException implements Exception {
  ApiException(this.code, this.message);

  ApiException.withInner(this.code, this.message, this.innerException, this.stackTrace);

  int code = 0;
  String? message;
  Exception? innerException;
  StackTrace? stackTrace;

  @override
  String toString() {
    return message ??= 'Something went wrong';
  }
}
