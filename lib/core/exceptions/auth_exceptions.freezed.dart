// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthException {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidCredentials,
    required TResult Function(String? message) weakPassword,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) emailNotConfirmed,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) usernameAlreadyTaken,
    required TResult Function(String message) databaseError,
    required TResult Function(String message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? emailAlreadyInUse,
    TResult? Function(String? message)? invalidCredentials,
    TResult? Function(String? message)? weakPassword,
    TResult? Function(String? message)? invalidEmail,
    TResult? Function(String? message)? userNotFound,
    TResult? Function(String? message)? emailNotConfirmed,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? usernameAlreadyTaken,
    TResult? Function(String message)? databaseError,
    TResult? Function(String message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidCredentials,
    TResult Function(String? message)? weakPassword,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? emailNotConfirmed,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? usernameAlreadyTaken,
    TResult Function(String message)? databaseError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAlreadyInUseException value)
        emailAlreadyInUse,
    required TResult Function(InvalidCredentialsException value)
        invalidCredentials,
    required TResult Function(WeakPasswordException value) weakPassword,
    required TResult Function(InvalidEmailException value) invalidEmail,
    required TResult Function(UserNotFoundException value) userNotFound,
    required TResult Function(EmailNotConfirmedException value)
        emailNotConfirmed,
    required TResult Function(TooManyRequestsException value) tooManyRequests,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ServerErrorException value) serverError,
    required TResult Function(UsernameAlreadyTakenException value)
        usernameAlreadyTaken,
    required TResult Function(DatabaseException value) databaseError,
    required TResult Function(UnknownAuthException value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult? Function(InvalidCredentialsException value)? invalidCredentials,
    TResult? Function(WeakPasswordException value)? weakPassword,
    TResult? Function(InvalidEmailException value)? invalidEmail,
    TResult? Function(UserNotFoundException value)? userNotFound,
    TResult? Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult? Function(TooManyRequestsException value)? tooManyRequests,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ServerErrorException value)? serverError,
    TResult? Function(UsernameAlreadyTakenException value)?
        usernameAlreadyTaken,
    TResult? Function(DatabaseException value)? databaseError,
    TResult? Function(UnknownAuthException value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult Function(InvalidCredentialsException value)? invalidCredentials,
    TResult Function(WeakPasswordException value)? weakPassword,
    TResult Function(InvalidEmailException value)? invalidEmail,
    TResult Function(UserNotFoundException value)? userNotFound,
    TResult Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult Function(TooManyRequestsException value)? tooManyRequests,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ServerErrorException value)? serverError,
    TResult Function(UsernameAlreadyTakenException value)? usernameAlreadyTaken,
    TResult Function(DatabaseException value)? databaseError,
    TResult Function(UnknownAuthException value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthExceptionCopyWith<AuthenticationException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthExceptionCopyWith<$Res> {
  factory $AuthExceptionCopyWith(
          AuthenticationException value, $Res Function(AuthenticationException) then) =
      _$AuthExceptionCopyWithImpl<$Res, AuthenticationException>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$AuthExceptionCopyWithImpl<$Res, $Val extends AuthenticationException>
    implements $AuthExceptionCopyWith<$Res> {
  _$AuthExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message!
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailAlreadyInUseExceptionImplCopyWith<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  factory _$$EmailAlreadyInUseExceptionImplCopyWith(
          _$EmailAlreadyInUseExceptionImpl value,
          $Res Function(_$EmailAlreadyInUseExceptionImpl) then) =
      __$$EmailAlreadyInUseExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$EmailAlreadyInUseExceptionImplCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$EmailAlreadyInUseExceptionImpl>
    implements _$$EmailAlreadyInUseExceptionImplCopyWith<$Res> {
  __$$EmailAlreadyInUseExceptionImplCopyWithImpl(
      _$EmailAlreadyInUseExceptionImpl _value,
      $Res Function(_$EmailAlreadyInUseExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$EmailAlreadyInUseExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EmailAlreadyInUseExceptionImpl implements EmailAlreadyInUseException {
  const _$EmailAlreadyInUseExceptionImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthException.emailAlreadyInUse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailAlreadyInUseExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailAlreadyInUseExceptionImplCopyWith<_$EmailAlreadyInUseExceptionImpl>
      get copyWith => __$$EmailAlreadyInUseExceptionImplCopyWithImpl<
          _$EmailAlreadyInUseExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidCredentials,
    required TResult Function(String? message) weakPassword,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) emailNotConfirmed,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) usernameAlreadyTaken,
    required TResult Function(String message) databaseError,
    required TResult Function(String message) unknown,
  }) {
    return emailAlreadyInUse(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? emailAlreadyInUse,
    TResult? Function(String? message)? invalidCredentials,
    TResult? Function(String? message)? weakPassword,
    TResult? Function(String? message)? invalidEmail,
    TResult? Function(String? message)? userNotFound,
    TResult? Function(String? message)? emailNotConfirmed,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? usernameAlreadyTaken,
    TResult? Function(String message)? databaseError,
    TResult? Function(String message)? unknown,
  }) {
    return emailAlreadyInUse?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidCredentials,
    TResult Function(String? message)? weakPassword,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? emailNotConfirmed,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? usernameAlreadyTaken,
    TResult Function(String message)? databaseError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAlreadyInUseException value)
        emailAlreadyInUse,
    required TResult Function(InvalidCredentialsException value)
        invalidCredentials,
    required TResult Function(WeakPasswordException value) weakPassword,
    required TResult Function(InvalidEmailException value) invalidEmail,
    required TResult Function(UserNotFoundException value) userNotFound,
    required TResult Function(EmailNotConfirmedException value)
        emailNotConfirmed,
    required TResult Function(TooManyRequestsException value) tooManyRequests,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ServerErrorException value) serverError,
    required TResult Function(UsernameAlreadyTakenException value)
        usernameAlreadyTaken,
    required TResult Function(DatabaseException value) databaseError,
    required TResult Function(UnknownAuthException value) unknown,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult? Function(InvalidCredentialsException value)? invalidCredentials,
    TResult? Function(WeakPasswordException value)? weakPassword,
    TResult? Function(InvalidEmailException value)? invalidEmail,
    TResult? Function(UserNotFoundException value)? userNotFound,
    TResult? Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult? Function(TooManyRequestsException value)? tooManyRequests,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ServerErrorException value)? serverError,
    TResult? Function(UsernameAlreadyTakenException value)?
        usernameAlreadyTaken,
    TResult? Function(DatabaseException value)? databaseError,
    TResult? Function(UnknownAuthException value)? unknown,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult Function(InvalidCredentialsException value)? invalidCredentials,
    TResult Function(WeakPasswordException value)? weakPassword,
    TResult Function(InvalidEmailException value)? invalidEmail,
    TResult Function(UserNotFoundException value)? userNotFound,
    TResult Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult Function(TooManyRequestsException value)? tooManyRequests,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ServerErrorException value)? serverError,
    TResult Function(UsernameAlreadyTakenException value)? usernameAlreadyTaken,
    TResult Function(DatabaseException value)? databaseError,
    TResult Function(UnknownAuthException value)? unknown,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUseException implements AuthenticationException {
  const factory EmailAlreadyInUseException([final String? message]) =
      _$EmailAlreadyInUseExceptionImpl;

  @override
  String? get message;

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailAlreadyInUseExceptionImplCopyWith<_$EmailAlreadyInUseExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidCredentialsExceptionImplCopyWith<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  factory _$$InvalidCredentialsExceptionImplCopyWith(
          _$InvalidCredentialsExceptionImpl value,
          $Res Function(_$InvalidCredentialsExceptionImpl) then) =
      __$$InvalidCredentialsExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$InvalidCredentialsExceptionImplCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$InvalidCredentialsExceptionImpl>
    implements _$$InvalidCredentialsExceptionImplCopyWith<$Res> {
  __$$InvalidCredentialsExceptionImplCopyWithImpl(
      _$InvalidCredentialsExceptionImpl _value,
      $Res Function(_$InvalidCredentialsExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$InvalidCredentialsExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidCredentialsExceptionImpl implements InvalidCredentialsException {
  const _$InvalidCredentialsExceptionImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthException.invalidCredentials(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidCredentialsExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidCredentialsExceptionImplCopyWith<_$InvalidCredentialsExceptionImpl>
      get copyWith => __$$InvalidCredentialsExceptionImplCopyWithImpl<
          _$InvalidCredentialsExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidCredentials,
    required TResult Function(String? message) weakPassword,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) emailNotConfirmed,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) usernameAlreadyTaken,
    required TResult Function(String message) databaseError,
    required TResult Function(String message) unknown,
  }) {
    return invalidCredentials(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? emailAlreadyInUse,
    TResult? Function(String? message)? invalidCredentials,
    TResult? Function(String? message)? weakPassword,
    TResult? Function(String? message)? invalidEmail,
    TResult? Function(String? message)? userNotFound,
    TResult? Function(String? message)? emailNotConfirmed,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? usernameAlreadyTaken,
    TResult? Function(String message)? databaseError,
    TResult? Function(String message)? unknown,
  }) {
    return invalidCredentials?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidCredentials,
    TResult Function(String? message)? weakPassword,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? emailNotConfirmed,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? usernameAlreadyTaken,
    TResult Function(String message)? databaseError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAlreadyInUseException value)
        emailAlreadyInUse,
    required TResult Function(InvalidCredentialsException value)
        invalidCredentials,
    required TResult Function(WeakPasswordException value) weakPassword,
    required TResult Function(InvalidEmailException value) invalidEmail,
    required TResult Function(UserNotFoundException value) userNotFound,
    required TResult Function(EmailNotConfirmedException value)
        emailNotConfirmed,
    required TResult Function(TooManyRequestsException value) tooManyRequests,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ServerErrorException value) serverError,
    required TResult Function(UsernameAlreadyTakenException value)
        usernameAlreadyTaken,
    required TResult Function(DatabaseException value) databaseError,
    required TResult Function(UnknownAuthException value) unknown,
  }) {
    return invalidCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult? Function(InvalidCredentialsException value)? invalidCredentials,
    TResult? Function(WeakPasswordException value)? weakPassword,
    TResult? Function(InvalidEmailException value)? invalidEmail,
    TResult? Function(UserNotFoundException value)? userNotFound,
    TResult? Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult? Function(TooManyRequestsException value)? tooManyRequests,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ServerErrorException value)? serverError,
    TResult? Function(UsernameAlreadyTakenException value)?
        usernameAlreadyTaken,
    TResult? Function(DatabaseException value)? databaseError,
    TResult? Function(UnknownAuthException value)? unknown,
  }) {
    return invalidCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult Function(InvalidCredentialsException value)? invalidCredentials,
    TResult Function(WeakPasswordException value)? weakPassword,
    TResult Function(InvalidEmailException value)? invalidEmail,
    TResult Function(UserNotFoundException value)? userNotFound,
    TResult Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult Function(TooManyRequestsException value)? tooManyRequests,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ServerErrorException value)? serverError,
    TResult Function(UsernameAlreadyTakenException value)? usernameAlreadyTaken,
    TResult Function(DatabaseException value)? databaseError,
    TResult Function(UnknownAuthException value)? unknown,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials(this);
    }
    return orElse();
  }
}

abstract class InvalidCredentialsException implements AuthenticationException {
  const factory InvalidCredentialsException([final String? message]) =
      _$InvalidCredentialsExceptionImpl;

  @override
  String? get message;

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidCredentialsExceptionImplCopyWith<_$InvalidCredentialsExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeakPasswordExceptionImplCopyWith<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  factory _$$WeakPasswordExceptionImplCopyWith(
          _$WeakPasswordExceptionImpl value,
          $Res Function(_$WeakPasswordExceptionImpl) then) =
      __$$WeakPasswordExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$WeakPasswordExceptionImplCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$WeakPasswordExceptionImpl>
    implements _$$WeakPasswordExceptionImplCopyWith<$Res> {
  __$$WeakPasswordExceptionImplCopyWithImpl(_$WeakPasswordExceptionImpl _value,
      $Res Function(_$WeakPasswordExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$WeakPasswordExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WeakPasswordExceptionImpl implements WeakPasswordException {
  const _$WeakPasswordExceptionImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthException.weakPassword(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeakPasswordExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeakPasswordExceptionImplCopyWith<_$WeakPasswordExceptionImpl>
      get copyWith => __$$WeakPasswordExceptionImplCopyWithImpl<
          _$WeakPasswordExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidCredentials,
    required TResult Function(String? message) weakPassword,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) emailNotConfirmed,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) usernameAlreadyTaken,
    required TResult Function(String message) databaseError,
    required TResult Function(String message) unknown,
  }) {
    return weakPassword(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? emailAlreadyInUse,
    TResult? Function(String? message)? invalidCredentials,
    TResult? Function(String? message)? weakPassword,
    TResult? Function(String? message)? invalidEmail,
    TResult? Function(String? message)? userNotFound,
    TResult? Function(String? message)? emailNotConfirmed,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? usernameAlreadyTaken,
    TResult? Function(String message)? databaseError,
    TResult? Function(String message)? unknown,
  }) {
    return weakPassword?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidCredentials,
    TResult Function(String? message)? weakPassword,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? emailNotConfirmed,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? usernameAlreadyTaken,
    TResult Function(String message)? databaseError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAlreadyInUseException value)
        emailAlreadyInUse,
    required TResult Function(InvalidCredentialsException value)
        invalidCredentials,
    required TResult Function(WeakPasswordException value) weakPassword,
    required TResult Function(InvalidEmailException value) invalidEmail,
    required TResult Function(UserNotFoundException value) userNotFound,
    required TResult Function(EmailNotConfirmedException value)
        emailNotConfirmed,
    required TResult Function(TooManyRequestsException value) tooManyRequests,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ServerErrorException value) serverError,
    required TResult Function(UsernameAlreadyTakenException value)
        usernameAlreadyTaken,
    required TResult Function(DatabaseException value) databaseError,
    required TResult Function(UnknownAuthException value) unknown,
  }) {
    return weakPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult? Function(InvalidCredentialsException value)? invalidCredentials,
    TResult? Function(WeakPasswordException value)? weakPassword,
    TResult? Function(InvalidEmailException value)? invalidEmail,
    TResult? Function(UserNotFoundException value)? userNotFound,
    TResult? Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult? Function(TooManyRequestsException value)? tooManyRequests,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ServerErrorException value)? serverError,
    TResult? Function(UsernameAlreadyTakenException value)?
        usernameAlreadyTaken,
    TResult? Function(DatabaseException value)? databaseError,
    TResult? Function(UnknownAuthException value)? unknown,
  }) {
    return weakPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult Function(InvalidCredentialsException value)? invalidCredentials,
    TResult Function(WeakPasswordException value)? weakPassword,
    TResult Function(InvalidEmailException value)? invalidEmail,
    TResult Function(UserNotFoundException value)? userNotFound,
    TResult Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult Function(TooManyRequestsException value)? tooManyRequests,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ServerErrorException value)? serverError,
    TResult Function(UsernameAlreadyTakenException value)? usernameAlreadyTaken,
    TResult Function(DatabaseException value)? databaseError,
    TResult Function(UnknownAuthException value)? unknown,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(this);
    }
    return orElse();
  }
}

abstract class WeakPasswordException implements AuthenticationException {
  const factory WeakPasswordException([final String? message]) =
      _$WeakPasswordExceptionImpl;

  @override
  String? get message;

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeakPasswordExceptionImplCopyWith<_$WeakPasswordExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidEmailExceptionImplCopyWith<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  factory _$$InvalidEmailExceptionImplCopyWith(
          _$InvalidEmailExceptionImpl value,
          $Res Function(_$InvalidEmailExceptionImpl) then) =
      __$$InvalidEmailExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$InvalidEmailExceptionImplCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$InvalidEmailExceptionImpl>
    implements _$$InvalidEmailExceptionImplCopyWith<$Res> {
  __$$InvalidEmailExceptionImplCopyWithImpl(_$InvalidEmailExceptionImpl _value,
      $Res Function(_$InvalidEmailExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$InvalidEmailExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidEmailExceptionImpl implements InvalidEmailException {
  const _$InvalidEmailExceptionImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthException.invalidEmail(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailExceptionImplCopyWith<_$InvalidEmailExceptionImpl>
      get copyWith => __$$InvalidEmailExceptionImplCopyWithImpl<
          _$InvalidEmailExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidCredentials,
    required TResult Function(String? message) weakPassword,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) emailNotConfirmed,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) usernameAlreadyTaken,
    required TResult Function(String message) databaseError,
    required TResult Function(String message) unknown,
  }) {
    return invalidEmail(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? emailAlreadyInUse,
    TResult? Function(String? message)? invalidCredentials,
    TResult? Function(String? message)? weakPassword,
    TResult? Function(String? message)? invalidEmail,
    TResult? Function(String? message)? userNotFound,
    TResult? Function(String? message)? emailNotConfirmed,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? usernameAlreadyTaken,
    TResult? Function(String message)? databaseError,
    TResult? Function(String message)? unknown,
  }) {
    return invalidEmail?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidCredentials,
    TResult Function(String? message)? weakPassword,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? emailNotConfirmed,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? usernameAlreadyTaken,
    TResult Function(String message)? databaseError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAlreadyInUseException value)
        emailAlreadyInUse,
    required TResult Function(InvalidCredentialsException value)
        invalidCredentials,
    required TResult Function(WeakPasswordException value) weakPassword,
    required TResult Function(InvalidEmailException value) invalidEmail,
    required TResult Function(UserNotFoundException value) userNotFound,
    required TResult Function(EmailNotConfirmedException value)
        emailNotConfirmed,
    required TResult Function(TooManyRequestsException value) tooManyRequests,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ServerErrorException value) serverError,
    required TResult Function(UsernameAlreadyTakenException value)
        usernameAlreadyTaken,
    required TResult Function(DatabaseException value) databaseError,
    required TResult Function(UnknownAuthException value) unknown,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult? Function(InvalidCredentialsException value)? invalidCredentials,
    TResult? Function(WeakPasswordException value)? weakPassword,
    TResult? Function(InvalidEmailException value)? invalidEmail,
    TResult? Function(UserNotFoundException value)? userNotFound,
    TResult? Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult? Function(TooManyRequestsException value)? tooManyRequests,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ServerErrorException value)? serverError,
    TResult? Function(UsernameAlreadyTakenException value)?
        usernameAlreadyTaken,
    TResult? Function(DatabaseException value)? databaseError,
    TResult? Function(UnknownAuthException value)? unknown,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult Function(InvalidCredentialsException value)? invalidCredentials,
    TResult Function(WeakPasswordException value)? weakPassword,
    TResult Function(InvalidEmailException value)? invalidEmail,
    TResult Function(UserNotFoundException value)? userNotFound,
    TResult Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult Function(TooManyRequestsException value)? tooManyRequests,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ServerErrorException value)? serverError,
    TResult Function(UsernameAlreadyTakenException value)? usernameAlreadyTaken,
    TResult Function(DatabaseException value)? databaseError,
    TResult Function(UnknownAuthException value)? unknown,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailException implements AuthenticationException {
  const factory InvalidEmailException([final String? message]) =
      _$InvalidEmailExceptionImpl;

  @override
  String? get message;

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidEmailExceptionImplCopyWith<_$InvalidEmailExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserNotFoundExceptionImplCopyWith<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  factory _$$UserNotFoundExceptionImplCopyWith(
          _$UserNotFoundExceptionImpl value,
          $Res Function(_$UserNotFoundExceptionImpl) then) =
      __$$UserNotFoundExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UserNotFoundExceptionImplCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$UserNotFoundExceptionImpl>
    implements _$$UserNotFoundExceptionImplCopyWith<$Res> {
  __$$UserNotFoundExceptionImplCopyWithImpl(_$UserNotFoundExceptionImpl _value,
      $Res Function(_$UserNotFoundExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UserNotFoundExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserNotFoundExceptionImpl implements UserNotFoundException {
  const _$UserNotFoundExceptionImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthException.userNotFound(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNotFoundExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNotFoundExceptionImplCopyWith<_$UserNotFoundExceptionImpl>
      get copyWith => __$$UserNotFoundExceptionImplCopyWithImpl<
          _$UserNotFoundExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidCredentials,
    required TResult Function(String? message) weakPassword,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) emailNotConfirmed,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) usernameAlreadyTaken,
    required TResult Function(String message) databaseError,
    required TResult Function(String message) unknown,
  }) {
    return userNotFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? emailAlreadyInUse,
    TResult? Function(String? message)? invalidCredentials,
    TResult? Function(String? message)? weakPassword,
    TResult? Function(String? message)? invalidEmail,
    TResult? Function(String? message)? userNotFound,
    TResult? Function(String? message)? emailNotConfirmed,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? usernameAlreadyTaken,
    TResult? Function(String message)? databaseError,
    TResult? Function(String message)? unknown,
  }) {
    return userNotFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidCredentials,
    TResult Function(String? message)? weakPassword,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? emailNotConfirmed,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? usernameAlreadyTaken,
    TResult Function(String message)? databaseError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAlreadyInUseException value)
        emailAlreadyInUse,
    required TResult Function(InvalidCredentialsException value)
        invalidCredentials,
    required TResult Function(WeakPasswordException value) weakPassword,
    required TResult Function(InvalidEmailException value) invalidEmail,
    required TResult Function(UserNotFoundException value) userNotFound,
    required TResult Function(EmailNotConfirmedException value)
        emailNotConfirmed,
    required TResult Function(TooManyRequestsException value) tooManyRequests,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ServerErrorException value) serverError,
    required TResult Function(UsernameAlreadyTakenException value)
        usernameAlreadyTaken,
    required TResult Function(DatabaseException value) databaseError,
    required TResult Function(UnknownAuthException value) unknown,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult? Function(InvalidCredentialsException value)? invalidCredentials,
    TResult? Function(WeakPasswordException value)? weakPassword,
    TResult? Function(InvalidEmailException value)? invalidEmail,
    TResult? Function(UserNotFoundException value)? userNotFound,
    TResult? Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult? Function(TooManyRequestsException value)? tooManyRequests,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ServerErrorException value)? serverError,
    TResult? Function(UsernameAlreadyTakenException value)?
        usernameAlreadyTaken,
    TResult? Function(DatabaseException value)? databaseError,
    TResult? Function(UnknownAuthException value)? unknown,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult Function(InvalidCredentialsException value)? invalidCredentials,
    TResult Function(WeakPasswordException value)? weakPassword,
    TResult Function(InvalidEmailException value)? invalidEmail,
    TResult Function(UserNotFoundException value)? userNotFound,
    TResult Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult Function(TooManyRequestsException value)? tooManyRequests,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ServerErrorException value)? serverError,
    TResult Function(UsernameAlreadyTakenException value)? usernameAlreadyTaken,
    TResult Function(DatabaseException value)? databaseError,
    TResult Function(UnknownAuthException value)? unknown,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class UserNotFoundException implements AuthenticationException {
  const factory UserNotFoundException([final String? message]) =
      _$UserNotFoundExceptionImpl;

  @override
  String? get message;

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserNotFoundExceptionImplCopyWith<_$UserNotFoundExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailNotConfirmedExceptionImplCopyWith<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  factory _$$EmailNotConfirmedExceptionImplCopyWith(
          _$EmailNotConfirmedExceptionImpl value,
          $Res Function(_$EmailNotConfirmedExceptionImpl) then) =
      __$$EmailNotConfirmedExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$EmailNotConfirmedExceptionImplCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$EmailNotConfirmedExceptionImpl>
    implements _$$EmailNotConfirmedExceptionImplCopyWith<$Res> {
  __$$EmailNotConfirmedExceptionImplCopyWithImpl(
      _$EmailNotConfirmedExceptionImpl _value,
      $Res Function(_$EmailNotConfirmedExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$EmailNotConfirmedExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EmailNotConfirmedExceptionImpl implements EmailNotConfirmedException {
  const _$EmailNotConfirmedExceptionImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthException.emailNotConfirmed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailNotConfirmedExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailNotConfirmedExceptionImplCopyWith<_$EmailNotConfirmedExceptionImpl>
      get copyWith => __$$EmailNotConfirmedExceptionImplCopyWithImpl<
          _$EmailNotConfirmedExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidCredentials,
    required TResult Function(String? message) weakPassword,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) emailNotConfirmed,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) usernameAlreadyTaken,
    required TResult Function(String message) databaseError,
    required TResult Function(String message) unknown,
  }) {
    return emailNotConfirmed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? emailAlreadyInUse,
    TResult? Function(String? message)? invalidCredentials,
    TResult? Function(String? message)? weakPassword,
    TResult? Function(String? message)? invalidEmail,
    TResult? Function(String? message)? userNotFound,
    TResult? Function(String? message)? emailNotConfirmed,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? usernameAlreadyTaken,
    TResult? Function(String message)? databaseError,
    TResult? Function(String message)? unknown,
  }) {
    return emailNotConfirmed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidCredentials,
    TResult Function(String? message)? weakPassword,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? emailNotConfirmed,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? usernameAlreadyTaken,
    TResult Function(String message)? databaseError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (emailNotConfirmed != null) {
      return emailNotConfirmed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAlreadyInUseException value)
        emailAlreadyInUse,
    required TResult Function(InvalidCredentialsException value)
        invalidCredentials,
    required TResult Function(WeakPasswordException value) weakPassword,
    required TResult Function(InvalidEmailException value) invalidEmail,
    required TResult Function(UserNotFoundException value) userNotFound,
    required TResult Function(EmailNotConfirmedException value)
        emailNotConfirmed,
    required TResult Function(TooManyRequestsException value) tooManyRequests,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ServerErrorException value) serverError,
    required TResult Function(UsernameAlreadyTakenException value)
        usernameAlreadyTaken,
    required TResult Function(DatabaseException value) databaseError,
    required TResult Function(UnknownAuthException value) unknown,
  }) {
    return emailNotConfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult? Function(InvalidCredentialsException value)? invalidCredentials,
    TResult? Function(WeakPasswordException value)? weakPassword,
    TResult? Function(InvalidEmailException value)? invalidEmail,
    TResult? Function(UserNotFoundException value)? userNotFound,
    TResult? Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult? Function(TooManyRequestsException value)? tooManyRequests,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ServerErrorException value)? serverError,
    TResult? Function(UsernameAlreadyTakenException value)?
        usernameAlreadyTaken,
    TResult? Function(DatabaseException value)? databaseError,
    TResult? Function(UnknownAuthException value)? unknown,
  }) {
    return emailNotConfirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult Function(InvalidCredentialsException value)? invalidCredentials,
    TResult Function(WeakPasswordException value)? weakPassword,
    TResult Function(InvalidEmailException value)? invalidEmail,
    TResult Function(UserNotFoundException value)? userNotFound,
    TResult Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult Function(TooManyRequestsException value)? tooManyRequests,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ServerErrorException value)? serverError,
    TResult Function(UsernameAlreadyTakenException value)? usernameAlreadyTaken,
    TResult Function(DatabaseException value)? databaseError,
    TResult Function(UnknownAuthException value)? unknown,
    required TResult orElse(),
  }) {
    if (emailNotConfirmed != null) {
      return emailNotConfirmed(this);
    }
    return orElse();
  }
}

abstract class EmailNotConfirmedException implements AuthenticationException {
  const factory EmailNotConfirmedException([final String? message]) =
      _$EmailNotConfirmedExceptionImpl;

  @override
  String? get message;

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailNotConfirmedExceptionImplCopyWith<_$EmailNotConfirmedExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TooManyRequestsExceptionImplCopyWith<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  factory _$$TooManyRequestsExceptionImplCopyWith(
          _$TooManyRequestsExceptionImpl value,
          $Res Function(_$TooManyRequestsExceptionImpl) then) =
      __$$TooManyRequestsExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$TooManyRequestsExceptionImplCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$TooManyRequestsExceptionImpl>
    implements _$$TooManyRequestsExceptionImplCopyWith<$Res> {
  __$$TooManyRequestsExceptionImplCopyWithImpl(
      _$TooManyRequestsExceptionImpl _value,
      $Res Function(_$TooManyRequestsExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$TooManyRequestsExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TooManyRequestsExceptionImpl implements TooManyRequestsException {
  const _$TooManyRequestsExceptionImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthException.tooManyRequests(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TooManyRequestsExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TooManyRequestsExceptionImplCopyWith<_$TooManyRequestsExceptionImpl>
      get copyWith => __$$TooManyRequestsExceptionImplCopyWithImpl<
          _$TooManyRequestsExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidCredentials,
    required TResult Function(String? message) weakPassword,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) emailNotConfirmed,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) usernameAlreadyTaken,
    required TResult Function(String message) databaseError,
    required TResult Function(String message) unknown,
  }) {
    return tooManyRequests(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? emailAlreadyInUse,
    TResult? Function(String? message)? invalidCredentials,
    TResult? Function(String? message)? weakPassword,
    TResult? Function(String? message)? invalidEmail,
    TResult? Function(String? message)? userNotFound,
    TResult? Function(String? message)? emailNotConfirmed,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? usernameAlreadyTaken,
    TResult? Function(String message)? databaseError,
    TResult? Function(String message)? unknown,
  }) {
    return tooManyRequests?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidCredentials,
    TResult Function(String? message)? weakPassword,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? emailNotConfirmed,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? usernameAlreadyTaken,
    TResult Function(String message)? databaseError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAlreadyInUseException value)
        emailAlreadyInUse,
    required TResult Function(InvalidCredentialsException value)
        invalidCredentials,
    required TResult Function(WeakPasswordException value) weakPassword,
    required TResult Function(InvalidEmailException value) invalidEmail,
    required TResult Function(UserNotFoundException value) userNotFound,
    required TResult Function(EmailNotConfirmedException value)
        emailNotConfirmed,
    required TResult Function(TooManyRequestsException value) tooManyRequests,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ServerErrorException value) serverError,
    required TResult Function(UsernameAlreadyTakenException value)
        usernameAlreadyTaken,
    required TResult Function(DatabaseException value) databaseError,
    required TResult Function(UnknownAuthException value) unknown,
  }) {
    return tooManyRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult? Function(InvalidCredentialsException value)? invalidCredentials,
    TResult? Function(WeakPasswordException value)? weakPassword,
    TResult? Function(InvalidEmailException value)? invalidEmail,
    TResult? Function(UserNotFoundException value)? userNotFound,
    TResult? Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult? Function(TooManyRequestsException value)? tooManyRequests,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ServerErrorException value)? serverError,
    TResult? Function(UsernameAlreadyTakenException value)?
        usernameAlreadyTaken,
    TResult? Function(DatabaseException value)? databaseError,
    TResult? Function(UnknownAuthException value)? unknown,
  }) {
    return tooManyRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult Function(InvalidCredentialsException value)? invalidCredentials,
    TResult Function(WeakPasswordException value)? weakPassword,
    TResult Function(InvalidEmailException value)? invalidEmail,
    TResult Function(UserNotFoundException value)? userNotFound,
    TResult Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult Function(TooManyRequestsException value)? tooManyRequests,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ServerErrorException value)? serverError,
    TResult Function(UsernameAlreadyTakenException value)? usernameAlreadyTaken,
    TResult Function(DatabaseException value)? databaseError,
    TResult Function(UnknownAuthException value)? unknown,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests(this);
    }
    return orElse();
  }
}

abstract class TooManyRequestsException implements AuthenticationException {
  const factory TooManyRequestsException([final String? message]) =
      _$TooManyRequestsExceptionImpl;

  @override
  String? get message;

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TooManyRequestsExceptionImplCopyWith<_$TooManyRequestsExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedExceptionImplCopyWith<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  factory _$$UnauthorizedExceptionImplCopyWith(
          _$UnauthorizedExceptionImpl value,
          $Res Function(_$UnauthorizedExceptionImpl) then) =
      __$$UnauthorizedExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnauthorizedExceptionImplCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$UnauthorizedExceptionImpl>
    implements _$$UnauthorizedExceptionImplCopyWith<$Res> {
  __$$UnauthorizedExceptionImplCopyWithImpl(_$UnauthorizedExceptionImpl _value,
      $Res Function(_$UnauthorizedExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnauthorizedExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnauthorizedExceptionImpl implements UnauthorizedException {
  const _$UnauthorizedExceptionImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthException.unauthorized(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedExceptionImplCopyWith<_$UnauthorizedExceptionImpl>
      get copyWith => __$$UnauthorizedExceptionImplCopyWithImpl<
          _$UnauthorizedExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidCredentials,
    required TResult Function(String? message) weakPassword,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) emailNotConfirmed,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) usernameAlreadyTaken,
    required TResult Function(String message) databaseError,
    required TResult Function(String message) unknown,
  }) {
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? emailAlreadyInUse,
    TResult? Function(String? message)? invalidCredentials,
    TResult? Function(String? message)? weakPassword,
    TResult? Function(String? message)? invalidEmail,
    TResult? Function(String? message)? userNotFound,
    TResult? Function(String? message)? emailNotConfirmed,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? usernameAlreadyTaken,
    TResult? Function(String message)? databaseError,
    TResult? Function(String message)? unknown,
  }) {
    return unauthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidCredentials,
    TResult Function(String? message)? weakPassword,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? emailNotConfirmed,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? usernameAlreadyTaken,
    TResult Function(String message)? databaseError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAlreadyInUseException value)
        emailAlreadyInUse,
    required TResult Function(InvalidCredentialsException value)
        invalidCredentials,
    required TResult Function(WeakPasswordException value) weakPassword,
    required TResult Function(InvalidEmailException value) invalidEmail,
    required TResult Function(UserNotFoundException value) userNotFound,
    required TResult Function(EmailNotConfirmedException value)
        emailNotConfirmed,
    required TResult Function(TooManyRequestsException value) tooManyRequests,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ServerErrorException value) serverError,
    required TResult Function(UsernameAlreadyTakenException value)
        usernameAlreadyTaken,
    required TResult Function(DatabaseException value) databaseError,
    required TResult Function(UnknownAuthException value) unknown,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult? Function(InvalidCredentialsException value)? invalidCredentials,
    TResult? Function(WeakPasswordException value)? weakPassword,
    TResult? Function(InvalidEmailException value)? invalidEmail,
    TResult? Function(UserNotFoundException value)? userNotFound,
    TResult? Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult? Function(TooManyRequestsException value)? tooManyRequests,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ServerErrorException value)? serverError,
    TResult? Function(UsernameAlreadyTakenException value)?
        usernameAlreadyTaken,
    TResult? Function(DatabaseException value)? databaseError,
    TResult? Function(UnknownAuthException value)? unknown,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult Function(InvalidCredentialsException value)? invalidCredentials,
    TResult Function(WeakPasswordException value)? weakPassword,
    TResult Function(InvalidEmailException value)? invalidEmail,
    TResult Function(UserNotFoundException value)? userNotFound,
    TResult Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult Function(TooManyRequestsException value)? tooManyRequests,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ServerErrorException value)? serverError,
    TResult Function(UsernameAlreadyTakenException value)? usernameAlreadyTaken,
    TResult Function(DatabaseException value)? databaseError,
    TResult Function(UnknownAuthException value)? unknown,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class UnauthorizedException implements AuthenticationException {
  const factory UnauthorizedException([final String? message]) =
      _$UnauthorizedExceptionImpl;

  @override
  String? get message;

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnauthorizedExceptionImplCopyWith<_$UnauthorizedExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerErrorExceptionImplCopyWith<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  factory _$$ServerErrorExceptionImplCopyWith(_$ServerErrorExceptionImpl value,
          $Res Function(_$ServerErrorExceptionImpl) then) =
      __$$ServerErrorExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ServerErrorExceptionImplCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$ServerErrorExceptionImpl>
    implements _$$ServerErrorExceptionImplCopyWith<$Res> {
  __$$ServerErrorExceptionImplCopyWithImpl(_$ServerErrorExceptionImpl _value,
      $Res Function(_$ServerErrorExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ServerErrorExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerErrorExceptionImpl implements ServerErrorException {
  const _$ServerErrorExceptionImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthException.serverError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorExceptionImplCopyWith<_$ServerErrorExceptionImpl>
      get copyWith =>
          __$$ServerErrorExceptionImplCopyWithImpl<_$ServerErrorExceptionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidCredentials,
    required TResult Function(String? message) weakPassword,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) emailNotConfirmed,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) usernameAlreadyTaken,
    required TResult Function(String message) databaseError,
    required TResult Function(String message) unknown,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? emailAlreadyInUse,
    TResult? Function(String? message)? invalidCredentials,
    TResult? Function(String? message)? weakPassword,
    TResult? Function(String? message)? invalidEmail,
    TResult? Function(String? message)? userNotFound,
    TResult? Function(String? message)? emailNotConfirmed,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? usernameAlreadyTaken,
    TResult? Function(String message)? databaseError,
    TResult? Function(String message)? unknown,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidCredentials,
    TResult Function(String? message)? weakPassword,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? emailNotConfirmed,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? usernameAlreadyTaken,
    TResult Function(String message)? databaseError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAlreadyInUseException value)
        emailAlreadyInUse,
    required TResult Function(InvalidCredentialsException value)
        invalidCredentials,
    required TResult Function(WeakPasswordException value) weakPassword,
    required TResult Function(InvalidEmailException value) invalidEmail,
    required TResult Function(UserNotFoundException value) userNotFound,
    required TResult Function(EmailNotConfirmedException value)
        emailNotConfirmed,
    required TResult Function(TooManyRequestsException value) tooManyRequests,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ServerErrorException value) serverError,
    required TResult Function(UsernameAlreadyTakenException value)
        usernameAlreadyTaken,
    required TResult Function(DatabaseException value) databaseError,
    required TResult Function(UnknownAuthException value) unknown,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult? Function(InvalidCredentialsException value)? invalidCredentials,
    TResult? Function(WeakPasswordException value)? weakPassword,
    TResult? Function(InvalidEmailException value)? invalidEmail,
    TResult? Function(UserNotFoundException value)? userNotFound,
    TResult? Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult? Function(TooManyRequestsException value)? tooManyRequests,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ServerErrorException value)? serverError,
    TResult? Function(UsernameAlreadyTakenException value)?
        usernameAlreadyTaken,
    TResult? Function(DatabaseException value)? databaseError,
    TResult? Function(UnknownAuthException value)? unknown,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult Function(InvalidCredentialsException value)? invalidCredentials,
    TResult Function(WeakPasswordException value)? weakPassword,
    TResult Function(InvalidEmailException value)? invalidEmail,
    TResult Function(UserNotFoundException value)? userNotFound,
    TResult Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult Function(TooManyRequestsException value)? tooManyRequests,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ServerErrorException value)? serverError,
    TResult Function(UsernameAlreadyTakenException value)? usernameAlreadyTaken,
    TResult Function(DatabaseException value)? databaseError,
    TResult Function(UnknownAuthException value)? unknown,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerErrorException implements AuthenticationException {
  const factory ServerErrorException([final String? message]) =
      _$ServerErrorExceptionImpl;

  @override
  String? get message;

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerErrorExceptionImplCopyWith<_$ServerErrorExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsernameAlreadyTakenExceptionImplCopyWith<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  factory _$$UsernameAlreadyTakenExceptionImplCopyWith(
          _$UsernameAlreadyTakenExceptionImpl value,
          $Res Function(_$UsernameAlreadyTakenExceptionImpl) then) =
      __$$UsernameAlreadyTakenExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UsernameAlreadyTakenExceptionImplCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res,
        _$UsernameAlreadyTakenExceptionImpl>
    implements _$$UsernameAlreadyTakenExceptionImplCopyWith<$Res> {
  __$$UsernameAlreadyTakenExceptionImplCopyWithImpl(
      _$UsernameAlreadyTakenExceptionImpl _value,
      $Res Function(_$UsernameAlreadyTakenExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UsernameAlreadyTakenExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UsernameAlreadyTakenExceptionImpl
    implements UsernameAlreadyTakenException {
  const _$UsernameAlreadyTakenExceptionImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthException.usernameAlreadyTaken(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsernameAlreadyTakenExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsernameAlreadyTakenExceptionImplCopyWith<
          _$UsernameAlreadyTakenExceptionImpl>
      get copyWith => __$$UsernameAlreadyTakenExceptionImplCopyWithImpl<
          _$UsernameAlreadyTakenExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidCredentials,
    required TResult Function(String? message) weakPassword,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) emailNotConfirmed,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) usernameAlreadyTaken,
    required TResult Function(String message) databaseError,
    required TResult Function(String message) unknown,
  }) {
    return usernameAlreadyTaken(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? emailAlreadyInUse,
    TResult? Function(String? message)? invalidCredentials,
    TResult? Function(String? message)? weakPassword,
    TResult? Function(String? message)? invalidEmail,
    TResult? Function(String? message)? userNotFound,
    TResult? Function(String? message)? emailNotConfirmed,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? usernameAlreadyTaken,
    TResult? Function(String message)? databaseError,
    TResult? Function(String message)? unknown,
  }) {
    return usernameAlreadyTaken?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidCredentials,
    TResult Function(String? message)? weakPassword,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? emailNotConfirmed,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? usernameAlreadyTaken,
    TResult Function(String message)? databaseError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (usernameAlreadyTaken != null) {
      return usernameAlreadyTaken(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAlreadyInUseException value)
        emailAlreadyInUse,
    required TResult Function(InvalidCredentialsException value)
        invalidCredentials,
    required TResult Function(WeakPasswordException value) weakPassword,
    required TResult Function(InvalidEmailException value) invalidEmail,
    required TResult Function(UserNotFoundException value) userNotFound,
    required TResult Function(EmailNotConfirmedException value)
        emailNotConfirmed,
    required TResult Function(TooManyRequestsException value) tooManyRequests,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ServerErrorException value) serverError,
    required TResult Function(UsernameAlreadyTakenException value)
        usernameAlreadyTaken,
    required TResult Function(DatabaseException value) databaseError,
    required TResult Function(UnknownAuthException value) unknown,
  }) {
    return usernameAlreadyTaken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult? Function(InvalidCredentialsException value)? invalidCredentials,
    TResult? Function(WeakPasswordException value)? weakPassword,
    TResult? Function(InvalidEmailException value)? invalidEmail,
    TResult? Function(UserNotFoundException value)? userNotFound,
    TResult? Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult? Function(TooManyRequestsException value)? tooManyRequests,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ServerErrorException value)? serverError,
    TResult? Function(UsernameAlreadyTakenException value)?
        usernameAlreadyTaken,
    TResult? Function(DatabaseException value)? databaseError,
    TResult? Function(UnknownAuthException value)? unknown,
  }) {
    return usernameAlreadyTaken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult Function(InvalidCredentialsException value)? invalidCredentials,
    TResult Function(WeakPasswordException value)? weakPassword,
    TResult Function(InvalidEmailException value)? invalidEmail,
    TResult Function(UserNotFoundException value)? userNotFound,
    TResult Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult Function(TooManyRequestsException value)? tooManyRequests,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ServerErrorException value)? serverError,
    TResult Function(UsernameAlreadyTakenException value)? usernameAlreadyTaken,
    TResult Function(DatabaseException value)? databaseError,
    TResult Function(UnknownAuthException value)? unknown,
    required TResult orElse(),
  }) {
    if (usernameAlreadyTaken != null) {
      return usernameAlreadyTaken(this);
    }
    return orElse();
  }
}

abstract class UsernameAlreadyTakenException implements AuthenticationException {
  const factory UsernameAlreadyTakenException([final String? message]) =
      _$UsernameAlreadyTakenExceptionImpl;

  @override
  String? get message;

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsernameAlreadyTakenExceptionImplCopyWith<
          _$UsernameAlreadyTakenExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DatabaseExceptionImplCopyWith<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  factory _$$DatabaseExceptionImplCopyWith(_$DatabaseExceptionImpl value,
          $Res Function(_$DatabaseExceptionImpl) then) =
      __$$DatabaseExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DatabaseExceptionImplCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$DatabaseExceptionImpl>
    implements _$$DatabaseExceptionImplCopyWith<$Res> {
  __$$DatabaseExceptionImplCopyWithImpl(_$DatabaseExceptionImpl _value,
      $Res Function(_$DatabaseExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DatabaseExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DatabaseExceptionImpl implements DatabaseException {
  const _$DatabaseExceptionImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthException.databaseError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatabaseExceptionImplCopyWith<_$DatabaseExceptionImpl> get copyWith =>
      __$$DatabaseExceptionImplCopyWithImpl<_$DatabaseExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidCredentials,
    required TResult Function(String? message) weakPassword,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) emailNotConfirmed,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) usernameAlreadyTaken,
    required TResult Function(String message) databaseError,
    required TResult Function(String message) unknown,
  }) {
    return databaseError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? emailAlreadyInUse,
    TResult? Function(String? message)? invalidCredentials,
    TResult? Function(String? message)? weakPassword,
    TResult? Function(String? message)? invalidEmail,
    TResult? Function(String? message)? userNotFound,
    TResult? Function(String? message)? emailNotConfirmed,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? usernameAlreadyTaken,
    TResult? Function(String message)? databaseError,
    TResult? Function(String message)? unknown,
  }) {
    return databaseError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidCredentials,
    TResult Function(String? message)? weakPassword,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? emailNotConfirmed,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? usernameAlreadyTaken,
    TResult Function(String message)? databaseError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (databaseError != null) {
      return databaseError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAlreadyInUseException value)
        emailAlreadyInUse,
    required TResult Function(InvalidCredentialsException value)
        invalidCredentials,
    required TResult Function(WeakPasswordException value) weakPassword,
    required TResult Function(InvalidEmailException value) invalidEmail,
    required TResult Function(UserNotFoundException value) userNotFound,
    required TResult Function(EmailNotConfirmedException value)
        emailNotConfirmed,
    required TResult Function(TooManyRequestsException value) tooManyRequests,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ServerErrorException value) serverError,
    required TResult Function(UsernameAlreadyTakenException value)
        usernameAlreadyTaken,
    required TResult Function(DatabaseException value) databaseError,
    required TResult Function(UnknownAuthException value) unknown,
  }) {
    return databaseError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult? Function(InvalidCredentialsException value)? invalidCredentials,
    TResult? Function(WeakPasswordException value)? weakPassword,
    TResult? Function(InvalidEmailException value)? invalidEmail,
    TResult? Function(UserNotFoundException value)? userNotFound,
    TResult? Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult? Function(TooManyRequestsException value)? tooManyRequests,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ServerErrorException value)? serverError,
    TResult? Function(UsernameAlreadyTakenException value)?
        usernameAlreadyTaken,
    TResult? Function(DatabaseException value)? databaseError,
    TResult? Function(UnknownAuthException value)? unknown,
  }) {
    return databaseError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult Function(InvalidCredentialsException value)? invalidCredentials,
    TResult Function(WeakPasswordException value)? weakPassword,
    TResult Function(InvalidEmailException value)? invalidEmail,
    TResult Function(UserNotFoundException value)? userNotFound,
    TResult Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult Function(TooManyRequestsException value)? tooManyRequests,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ServerErrorException value)? serverError,
    TResult Function(UsernameAlreadyTakenException value)? usernameAlreadyTaken,
    TResult Function(DatabaseException value)? databaseError,
    TResult Function(UnknownAuthException value)? unknown,
    required TResult orElse(),
  }) {
    if (databaseError != null) {
      return databaseError(this);
    }
    return orElse();
  }
}

abstract class DatabaseException implements AuthenticationException {
  const factory DatabaseException(final String message) =
      _$DatabaseExceptionImpl;

  @override
  String get message;

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatabaseExceptionImplCopyWith<_$DatabaseExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownAuthExceptionImplCopyWith<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  factory _$$UnknownAuthExceptionImplCopyWith(_$UnknownAuthExceptionImpl value,
          $Res Function(_$UnknownAuthExceptionImpl) then) =
      __$$UnknownAuthExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnknownAuthExceptionImplCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$UnknownAuthExceptionImpl>
    implements _$$UnknownAuthExceptionImplCopyWith<$Res> {
  __$$UnknownAuthExceptionImplCopyWithImpl(_$UnknownAuthExceptionImpl _value,
      $Res Function(_$UnknownAuthExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnknownAuthExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownAuthExceptionImpl implements UnknownAuthException {
  const _$UnknownAuthExceptionImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthException.unknown(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownAuthExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownAuthExceptionImplCopyWith<_$UnknownAuthExceptionImpl>
      get copyWith =>
          __$$UnknownAuthExceptionImplCopyWithImpl<_$UnknownAuthExceptionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidCredentials,
    required TResult Function(String? message) weakPassword,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) emailNotConfirmed,
    required TResult Function(String? message) tooManyRequests,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) usernameAlreadyTaken,
    required TResult Function(String message) databaseError,
    required TResult Function(String message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? emailAlreadyInUse,
    TResult? Function(String? message)? invalidCredentials,
    TResult? Function(String? message)? weakPassword,
    TResult? Function(String? message)? invalidEmail,
    TResult? Function(String? message)? userNotFound,
    TResult? Function(String? message)? emailNotConfirmed,
    TResult? Function(String? message)? tooManyRequests,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message)? usernameAlreadyTaken,
    TResult? Function(String message)? databaseError,
    TResult? Function(String message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidCredentials,
    TResult Function(String? message)? weakPassword,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? emailNotConfirmed,
    TResult Function(String? message)? tooManyRequests,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? usernameAlreadyTaken,
    TResult Function(String message)? databaseError,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAlreadyInUseException value)
        emailAlreadyInUse,
    required TResult Function(InvalidCredentialsException value)
        invalidCredentials,
    required TResult Function(WeakPasswordException value) weakPassword,
    required TResult Function(InvalidEmailException value) invalidEmail,
    required TResult Function(UserNotFoundException value) userNotFound,
    required TResult Function(EmailNotConfirmedException value)
        emailNotConfirmed,
    required TResult Function(TooManyRequestsException value) tooManyRequests,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ServerErrorException value) serverError,
    required TResult Function(UsernameAlreadyTakenException value)
        usernameAlreadyTaken,
    required TResult Function(DatabaseException value) databaseError,
    required TResult Function(UnknownAuthException value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult? Function(InvalidCredentialsException value)? invalidCredentials,
    TResult? Function(WeakPasswordException value)? weakPassword,
    TResult? Function(InvalidEmailException value)? invalidEmail,
    TResult? Function(UserNotFoundException value)? userNotFound,
    TResult? Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult? Function(TooManyRequestsException value)? tooManyRequests,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ServerErrorException value)? serverError,
    TResult? Function(UsernameAlreadyTakenException value)?
        usernameAlreadyTaken,
    TResult? Function(DatabaseException value)? databaseError,
    TResult? Function(UnknownAuthException value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAlreadyInUseException value)? emailAlreadyInUse,
    TResult Function(InvalidCredentialsException value)? invalidCredentials,
    TResult Function(WeakPasswordException value)? weakPassword,
    TResult Function(InvalidEmailException value)? invalidEmail,
    TResult Function(UserNotFoundException value)? userNotFound,
    TResult Function(EmailNotConfirmedException value)? emailNotConfirmed,
    TResult Function(TooManyRequestsException value)? tooManyRequests,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ServerErrorException value)? serverError,
    TResult Function(UsernameAlreadyTakenException value)? usernameAlreadyTaken,
    TResult Function(DatabaseException value)? databaseError,
    TResult Function(UnknownAuthException value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownAuthException implements AuthenticationException {
  const factory UnknownAuthException(final String message) =
      _$UnknownAuthExceptionImpl;

  @override
  String get message;

  /// Create a copy of AuthException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownAuthExceptionImplCopyWith<_$UnknownAuthExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
