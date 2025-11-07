import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_exceptions.freezed.dart';

/// Authentication exceptions using sealed classes
@freezed
sealed class AuthenticationException with _$AuthException implements Exception {
  const factory AuthenticationException.emailAlreadyInUse([String? message]) = EmailAlreadyInUseException;
  const factory AuthenticationException.invalidCredentials([String? message]) = InvalidCredentialsException;
  const factory AuthenticationException.weakPassword([String? message]) = WeakPasswordException;
  const factory AuthenticationException.invalidEmail([String? message]) = InvalidEmailException;
  const factory AuthenticationException.userNotFound([String? message]) = UserNotFoundException;
  const factory AuthenticationException.emailNotConfirmed([String? message]) = EmailNotConfirmedException;
  const factory AuthenticationException.tooManyRequests([String? message]) = TooManyRequestsException;
  const factory AuthenticationException.unauthorized([String? message]) = UnauthorizedException;
  const factory AuthenticationException.serverError([String? message]) = ServerErrorException;
  const factory AuthenticationException.usernameAlreadyTaken([String? message]) = UsernameAlreadyTakenException;
  const factory AuthenticationException.databaseError(String message) = DatabaseException;
  const factory AuthenticationException.unknown(String message) = UnknownAuthException;
}

/// Extension to get user-friendly messages
extension AuthenticationExceptionMessage on AuthenticationException {
  String get userMessage {
    return when(
      emailAlreadyInUse: (msg) => msg ?? 'Cette adresse email est déjà utilisée',
      invalidCredentials: (msg) => msg ?? 'Email ou mot de passe incorrect',
      weakPassword: (msg) => msg ?? 'Le mot de passe doit contenir au moins 6 caractères',
      invalidEmail: (msg) => msg ?? 'Adresse email invalide',
      userNotFound: (msg) => msg ?? 'Utilisateur introuvable',
      emailNotConfirmed: (msg) => msg ?? 'Veuillez confirmer votre email avant de vous connecter',
      tooManyRequests: (msg) => msg ?? 'Trop de tentatives. Veuillez réessayer plus tard',
      unauthorized: (msg) => msg ?? 'Non autorisé. Veuillez vous reconnecter',
      serverError: (msg) => msg ?? 'Erreur serveur. Veuillez réessayer plus tard',
      usernameAlreadyTaken: (msg) => msg ?? 'Ce nom d\'utilisateur est déjà pris',
      databaseError: (msg) => 'Erreur de base de données: $msg',
      unknown: (msg) => 'Erreur d\'authentification: $msg',
    );
  }
}

