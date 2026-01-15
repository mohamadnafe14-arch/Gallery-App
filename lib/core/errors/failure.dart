abstract class Failure {
  final String message;
  Failure(this.message);
}

class ServerFailure extends Failure {
  @override
  // ignore: overridden_fields
  final String message;
  ServerFailure(this.message) : super(message);
}

class PermissionFailure extends Failure {
  @override
  // ignore: overridden_fields
  final String message;
  PermissionFailure(this.message) : super(message);
}
