class AcenteError implements Exception {

  final String message;
  final int httpStatusCode;
  final String errorCode;

  AcenteError({
    required this.message,
    required this.httpStatusCode,
    this.errorCode = "",
  });

  factory AcenteError.fromError(dynamic e) {
    if(e is AcenteError) {
      return e;
    } else {
      return AcenteError(message: e.toString(), httpStatusCode: -1, errorCode: "");
    }
  }

  @override
  String toString() => "AcenteError { message: $message, httpStatusCode: $httpStatusCode, errorCode: $errorCode }";

}