// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(
            String username, String email, String password, String prePassword)
        signUp,
    required TResult Function() signOut,
    required TResult Function(String password) deleteAccount,
    required TResult Function() getAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(
            String username, String email, String password, String prePassword)?
        signUp,
    TResult? Function()? signOut,
    TResult? Function(String password)? deleteAccount,
    TResult? Function()? getAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(
            String username, String email, String password, String prePassword)?
        signUp,
    TResult Function()? signOut,
    TResult Function(String password)? deleteAccount,
    TResult Function()? getAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthSignUpEvent value) signUp,
    required TResult Function(AuthSignOutEvent value) signOut,
    required TResult Function(AuthDeleteAccountEvent value) deleteAccount,
    required TResult Function(AuthGetAccountEvent value) getAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignInEvent value)? signIn,
    TResult? Function(AuthSignUpEvent value)? signUp,
    TResult? Function(AuthSignOutEvent value)? signOut,
    TResult? Function(AuthDeleteAccountEvent value)? deleteAccount,
    TResult? Function(AuthGetAccountEvent value)? getAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthSignUpEvent value)? signUp,
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(AuthDeleteAccountEvent value)? deleteAccount,
    TResult Function(AuthGetAccountEvent value)? getAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthSignInEventCopyWith<$Res> {
  factory _$$AuthSignInEventCopyWith(
          _$AuthSignInEvent value, $Res Function(_$AuthSignInEvent) then) =
      __$$AuthSignInEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthSignInEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSignInEvent>
    implements _$$AuthSignInEventCopyWith<$Res> {
  __$$AuthSignInEventCopyWithImpl(
      _$AuthSignInEvent _value, $Res Function(_$AuthSignInEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthSignInEvent(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthSignInEvent implements AuthSignInEvent {
  const _$AuthSignInEvent(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignInEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSignInEventCopyWith<_$AuthSignInEvent> get copyWith =>
      __$$AuthSignInEventCopyWithImpl<_$AuthSignInEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(
            String username, String email, String password, String prePassword)
        signUp,
    required TResult Function() signOut,
    required TResult Function(String password) deleteAccount,
    required TResult Function() getAccount,
  }) {
    return signIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(
            String username, String email, String password, String prePassword)?
        signUp,
    TResult? Function()? signOut,
    TResult? Function(String password)? deleteAccount,
    TResult? Function()? getAccount,
  }) {
    return signIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(
            String username, String email, String password, String prePassword)?
        signUp,
    TResult Function()? signOut,
    TResult Function(String password)? deleteAccount,
    TResult Function()? getAccount,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthSignUpEvent value) signUp,
    required TResult Function(AuthSignOutEvent value) signOut,
    required TResult Function(AuthDeleteAccountEvent value) deleteAccount,
    required TResult Function(AuthGetAccountEvent value) getAccount,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignInEvent value)? signIn,
    TResult? Function(AuthSignUpEvent value)? signUp,
    TResult? Function(AuthSignOutEvent value)? signOut,
    TResult? Function(AuthDeleteAccountEvent value)? deleteAccount,
    TResult? Function(AuthGetAccountEvent value)? getAccount,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthSignUpEvent value)? signUp,
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(AuthDeleteAccountEvent value)? deleteAccount,
    TResult Function(AuthGetAccountEvent value)? getAccount,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class AuthSignInEvent implements AuthEvent {
  const factory AuthSignInEvent(final String email, final String password) =
      _$AuthSignInEvent;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$AuthSignInEventCopyWith<_$AuthSignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthSignUpEventCopyWith<$Res> {
  factory _$$AuthSignUpEventCopyWith(
          _$AuthSignUpEvent value, $Res Function(_$AuthSignUpEvent) then) =
      __$$AuthSignUpEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String username, String email, String password, String prePassword});
}

/// @nodoc
class __$$AuthSignUpEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSignUpEvent>
    implements _$$AuthSignUpEventCopyWith<$Res> {
  __$$AuthSignUpEventCopyWithImpl(
      _$AuthSignUpEvent _value, $Res Function(_$AuthSignUpEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password = null,
    Object? prePassword = null,
  }) {
    return _then(_$AuthSignUpEvent(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == prePassword
          ? _value.prePassword
          : prePassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthSignUpEvent implements AuthSignUpEvent {
  const _$AuthSignUpEvent(
      this.username, this.email, this.password, this.prePassword);

  @override
  final String username;
  @override
  final String email;
  @override
  final String password;
  @override
  final String prePassword;

  @override
  String toString() {
    return 'AuthEvent.signUp(username: $username, email: $email, password: $password, prePassword: $prePassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignUpEvent &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.prePassword, prePassword) ||
                other.prePassword == prePassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, username, email, password, prePassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSignUpEventCopyWith<_$AuthSignUpEvent> get copyWith =>
      __$$AuthSignUpEventCopyWithImpl<_$AuthSignUpEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(
            String username, String email, String password, String prePassword)
        signUp,
    required TResult Function() signOut,
    required TResult Function(String password) deleteAccount,
    required TResult Function() getAccount,
  }) {
    return signUp(username, email, password, prePassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(
            String username, String email, String password, String prePassword)?
        signUp,
    TResult? Function()? signOut,
    TResult? Function(String password)? deleteAccount,
    TResult? Function()? getAccount,
  }) {
    return signUp?.call(username, email, password, prePassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(
            String username, String email, String password, String prePassword)?
        signUp,
    TResult Function()? signOut,
    TResult Function(String password)? deleteAccount,
    TResult Function()? getAccount,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(username, email, password, prePassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthSignUpEvent value) signUp,
    required TResult Function(AuthSignOutEvent value) signOut,
    required TResult Function(AuthDeleteAccountEvent value) deleteAccount,
    required TResult Function(AuthGetAccountEvent value) getAccount,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignInEvent value)? signIn,
    TResult? Function(AuthSignUpEvent value)? signUp,
    TResult? Function(AuthSignOutEvent value)? signOut,
    TResult? Function(AuthDeleteAccountEvent value)? deleteAccount,
    TResult? Function(AuthGetAccountEvent value)? getAccount,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthSignUpEvent value)? signUp,
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(AuthDeleteAccountEvent value)? deleteAccount,
    TResult Function(AuthGetAccountEvent value)? getAccount,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class AuthSignUpEvent implements AuthEvent {
  const factory AuthSignUpEvent(final String username, final String email,
      final String password, final String prePassword) = _$AuthSignUpEvent;

  String get username;
  String get email;
  String get password;
  String get prePassword;
  @JsonKey(ignore: true)
  _$$AuthSignUpEventCopyWith<_$AuthSignUpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthSignOutEventCopyWith<$Res> {
  factory _$$AuthSignOutEventCopyWith(
          _$AuthSignOutEvent value, $Res Function(_$AuthSignOutEvent) then) =
      __$$AuthSignOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthSignOutEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSignOutEvent>
    implements _$$AuthSignOutEventCopyWith<$Res> {
  __$$AuthSignOutEventCopyWithImpl(
      _$AuthSignOutEvent _value, $Res Function(_$AuthSignOutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthSignOutEvent implements AuthSignOutEvent {
  const _$AuthSignOutEvent();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthSignOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(
            String username, String email, String password, String prePassword)
        signUp,
    required TResult Function() signOut,
    required TResult Function(String password) deleteAccount,
    required TResult Function() getAccount,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(
            String username, String email, String password, String prePassword)?
        signUp,
    TResult? Function()? signOut,
    TResult? Function(String password)? deleteAccount,
    TResult? Function()? getAccount,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(
            String username, String email, String password, String prePassword)?
        signUp,
    TResult Function()? signOut,
    TResult Function(String password)? deleteAccount,
    TResult Function()? getAccount,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthSignUpEvent value) signUp,
    required TResult Function(AuthSignOutEvent value) signOut,
    required TResult Function(AuthDeleteAccountEvent value) deleteAccount,
    required TResult Function(AuthGetAccountEvent value) getAccount,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignInEvent value)? signIn,
    TResult? Function(AuthSignUpEvent value)? signUp,
    TResult? Function(AuthSignOutEvent value)? signOut,
    TResult? Function(AuthDeleteAccountEvent value)? deleteAccount,
    TResult? Function(AuthGetAccountEvent value)? getAccount,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthSignUpEvent value)? signUp,
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(AuthDeleteAccountEvent value)? deleteAccount,
    TResult Function(AuthGetAccountEvent value)? getAccount,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class AuthSignOutEvent implements AuthEvent {
  const factory AuthSignOutEvent() = _$AuthSignOutEvent;
}

/// @nodoc
abstract class _$$AuthDeleteAccountEventCopyWith<$Res> {
  factory _$$AuthDeleteAccountEventCopyWith(_$AuthDeleteAccountEvent value,
          $Res Function(_$AuthDeleteAccountEvent) then) =
      __$$AuthDeleteAccountEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$AuthDeleteAccountEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthDeleteAccountEvent>
    implements _$$AuthDeleteAccountEventCopyWith<$Res> {
  __$$AuthDeleteAccountEventCopyWithImpl(_$AuthDeleteAccountEvent _value,
      $Res Function(_$AuthDeleteAccountEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$AuthDeleteAccountEvent(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthDeleteAccountEvent implements AuthDeleteAccountEvent {
  const _$AuthDeleteAccountEvent(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.deleteAccount(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthDeleteAccountEvent &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthDeleteAccountEventCopyWith<_$AuthDeleteAccountEvent> get copyWith =>
      __$$AuthDeleteAccountEventCopyWithImpl<_$AuthDeleteAccountEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(
            String username, String email, String password, String prePassword)
        signUp,
    required TResult Function() signOut,
    required TResult Function(String password) deleteAccount,
    required TResult Function() getAccount,
  }) {
    return deleteAccount(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(
            String username, String email, String password, String prePassword)?
        signUp,
    TResult? Function()? signOut,
    TResult? Function(String password)? deleteAccount,
    TResult? Function()? getAccount,
  }) {
    return deleteAccount?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(
            String username, String email, String password, String prePassword)?
        signUp,
    TResult Function()? signOut,
    TResult Function(String password)? deleteAccount,
    TResult Function()? getAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthSignUpEvent value) signUp,
    required TResult Function(AuthSignOutEvent value) signOut,
    required TResult Function(AuthDeleteAccountEvent value) deleteAccount,
    required TResult Function(AuthGetAccountEvent value) getAccount,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignInEvent value)? signIn,
    TResult? Function(AuthSignUpEvent value)? signUp,
    TResult? Function(AuthSignOutEvent value)? signOut,
    TResult? Function(AuthDeleteAccountEvent value)? deleteAccount,
    TResult? Function(AuthGetAccountEvent value)? getAccount,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthSignUpEvent value)? signUp,
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(AuthDeleteAccountEvent value)? deleteAccount,
    TResult Function(AuthGetAccountEvent value)? getAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class AuthDeleteAccountEvent implements AuthEvent {
  const factory AuthDeleteAccountEvent(final String password) =
      _$AuthDeleteAccountEvent;

  String get password;
  @JsonKey(ignore: true)
  _$$AuthDeleteAccountEventCopyWith<_$AuthDeleteAccountEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthGetAccountEventCopyWith<$Res> {
  factory _$$AuthGetAccountEventCopyWith(_$AuthGetAccountEvent value,
          $Res Function(_$AuthGetAccountEvent) then) =
      __$$AuthGetAccountEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthGetAccountEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthGetAccountEvent>
    implements _$$AuthGetAccountEventCopyWith<$Res> {
  __$$AuthGetAccountEventCopyWithImpl(
      _$AuthGetAccountEvent _value, $Res Function(_$AuthGetAccountEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthGetAccountEvent implements AuthGetAccountEvent {
  const _$AuthGetAccountEvent();

  @override
  String toString() {
    return 'AuthEvent.getAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthGetAccountEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(
            String username, String email, String password, String prePassword)
        signUp,
    required TResult Function() signOut,
    required TResult Function(String password) deleteAccount,
    required TResult Function() getAccount,
  }) {
    return getAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(
            String username, String email, String password, String prePassword)?
        signUp,
    TResult? Function()? signOut,
    TResult? Function(String password)? deleteAccount,
    TResult? Function()? getAccount,
  }) {
    return getAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(
            String username, String email, String password, String prePassword)?
        signUp,
    TResult Function()? signOut,
    TResult Function(String password)? deleteAccount,
    TResult Function()? getAccount,
    required TResult orElse(),
  }) {
    if (getAccount != null) {
      return getAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthSignUpEvent value) signUp,
    required TResult Function(AuthSignOutEvent value) signOut,
    required TResult Function(AuthDeleteAccountEvent value) deleteAccount,
    required TResult Function(AuthGetAccountEvent value) getAccount,
  }) {
    return getAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignInEvent value)? signIn,
    TResult? Function(AuthSignUpEvent value)? signUp,
    TResult? Function(AuthSignOutEvent value)? signOut,
    TResult? Function(AuthDeleteAccountEvent value)? deleteAccount,
    TResult? Function(AuthGetAccountEvent value)? getAccount,
  }) {
    return getAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthSignUpEvent value)? signUp,
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(AuthDeleteAccountEvent value)? deleteAccount,
    TResult Function(AuthGetAccountEvent value)? getAccount,
    required TResult orElse(),
  }) {
    if (getAccount != null) {
      return getAccount(this);
    }
    return orElse();
  }
}

abstract class AuthGetAccountEvent implements AuthEvent {
  const factory AuthGetAccountEvent() = _$AuthGetAccountEvent;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message, Member? user) success,
    required TResult Function(String? message) signOutSuccess,
    required TResult Function(String? message) deleteAccountSuccess,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message, Member? user)? success,
    TResult? Function(String? message)? signOutSuccess,
    TResult? Function(String? message)? deleteAccountSuccess,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message, Member? user)? success,
    TResult Function(String? message)? signOutSuccess,
    TResult Function(String? message)? deleteAccountSuccess,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthSuccessState value) success,
    required TResult Function(SignOutSuccessState value) signOutSuccess,
    required TResult Function(DeleteAccountSuccessState value)
        deleteAccountSuccess,
    required TResult Function(AuthFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(AuthLoadingState value)? loading,
    TResult? Function(AuthSuccessState value)? success,
    TResult? Function(SignOutSuccessState value)? signOutSuccess,
    TResult? Function(DeleteAccountSuccessState value)? deleteAccountSuccess,
    TResult? Function(AuthFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthSuccessState value)? success,
    TResult Function(SignOutSuccessState value)? signOutSuccess,
    TResult Function(DeleteAccountSuccessState value)? deleteAccountSuccess,
    TResult Function(AuthFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthInitialStateCopyWith<$Res> {
  factory _$$AuthInitialStateCopyWith(
          _$AuthInitialState value, $Res Function(_$AuthInitialState) then) =
      __$$AuthInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitialStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthInitialState>
    implements _$$AuthInitialStateCopyWith<$Res> {
  __$$AuthInitialStateCopyWithImpl(
      _$AuthInitialState _value, $Res Function(_$AuthInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthInitialState implements AuthInitialState {
  const _$AuthInitialState();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message, Member? user) success,
    required TResult Function(String? message) signOutSuccess,
    required TResult Function(String? message) deleteAccountSuccess,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message, Member? user)? success,
    TResult? Function(String? message)? signOutSuccess,
    TResult? Function(String? message)? deleteAccountSuccess,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message, Member? user)? success,
    TResult Function(String? message)? signOutSuccess,
    TResult Function(String? message)? deleteAccountSuccess,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthSuccessState value) success,
    required TResult Function(SignOutSuccessState value) signOutSuccess,
    required TResult Function(DeleteAccountSuccessState value)
        deleteAccountSuccess,
    required TResult Function(AuthFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(AuthLoadingState value)? loading,
    TResult? Function(AuthSuccessState value)? success,
    TResult? Function(SignOutSuccessState value)? signOutSuccess,
    TResult? Function(DeleteAccountSuccessState value)? deleteAccountSuccess,
    TResult? Function(AuthFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthSuccessState value)? success,
    TResult Function(SignOutSuccessState value)? signOutSuccess,
    TResult Function(DeleteAccountSuccessState value)? deleteAccountSuccess,
    TResult Function(AuthFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitialState implements AuthState {
  const factory AuthInitialState() = _$AuthInitialState;
}

/// @nodoc
abstract class _$$AuthLoadingStateCopyWith<$Res> {
  factory _$$AuthLoadingStateCopyWith(
          _$AuthLoadingState value, $Res Function(_$AuthLoadingState) then) =
      __$$AuthLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoadingStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthLoadingState>
    implements _$$AuthLoadingStateCopyWith<$Res> {
  __$$AuthLoadingStateCopyWithImpl(
      _$AuthLoadingState _value, $Res Function(_$AuthLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLoadingState implements AuthLoadingState {
  const _$AuthLoadingState();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message, Member? user) success,
    required TResult Function(String? message) signOutSuccess,
    required TResult Function(String? message) deleteAccountSuccess,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message, Member? user)? success,
    TResult? Function(String? message)? signOutSuccess,
    TResult? Function(String? message)? deleteAccountSuccess,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message, Member? user)? success,
    TResult Function(String? message)? signOutSuccess,
    TResult Function(String? message)? deleteAccountSuccess,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthSuccessState value) success,
    required TResult Function(SignOutSuccessState value) signOutSuccess,
    required TResult Function(DeleteAccountSuccessState value)
        deleteAccountSuccess,
    required TResult Function(AuthFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(AuthLoadingState value)? loading,
    TResult? Function(AuthSuccessState value)? success,
    TResult? Function(SignOutSuccessState value)? signOutSuccess,
    TResult? Function(DeleteAccountSuccessState value)? deleteAccountSuccess,
    TResult? Function(AuthFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthSuccessState value)? success,
    TResult Function(SignOutSuccessState value)? signOutSuccess,
    TResult Function(DeleteAccountSuccessState value)? deleteAccountSuccess,
    TResult Function(AuthFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthLoadingState implements AuthState {
  const factory AuthLoadingState() = _$AuthLoadingState;
}

/// @nodoc
abstract class _$$AuthSuccessStateCopyWith<$Res> {
  factory _$$AuthSuccessStateCopyWith(
          _$AuthSuccessState value, $Res Function(_$AuthSuccessState) then) =
      __$$AuthSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, Member? user});

  $MemberCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthSuccessStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthSuccessState>
    implements _$$AuthSuccessStateCopyWith<$Res> {
  __$$AuthSuccessStateCopyWithImpl(
      _$AuthSuccessState _value, $Res Function(_$AuthSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? user = freezed,
  }) {
    return _then(_$AuthSuccessState(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Member?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MemberCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $MemberCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AuthSuccessState implements AuthSuccessState {
  const _$AuthSuccessState({this.message, this.user});

  @override
  final String? message;
  @override
  final Member? user;

  @override
  String toString() {
    return 'AuthState.success(message: $message, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSuccessState &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSuccessStateCopyWith<_$AuthSuccessState> get copyWith =>
      __$$AuthSuccessStateCopyWithImpl<_$AuthSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message, Member? user) success,
    required TResult Function(String? message) signOutSuccess,
    required TResult Function(String? message) deleteAccountSuccess,
    required TResult Function(String message) failure,
  }) {
    return success(message, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message, Member? user)? success,
    TResult? Function(String? message)? signOutSuccess,
    TResult? Function(String? message)? deleteAccountSuccess,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(message, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message, Member? user)? success,
    TResult Function(String? message)? signOutSuccess,
    TResult Function(String? message)? deleteAccountSuccess,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthSuccessState value) success,
    required TResult Function(SignOutSuccessState value) signOutSuccess,
    required TResult Function(DeleteAccountSuccessState value)
        deleteAccountSuccess,
    required TResult Function(AuthFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(AuthLoadingState value)? loading,
    TResult? Function(AuthSuccessState value)? success,
    TResult? Function(SignOutSuccessState value)? signOutSuccess,
    TResult? Function(DeleteAccountSuccessState value)? deleteAccountSuccess,
    TResult? Function(AuthFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthSuccessState value)? success,
    TResult Function(SignOutSuccessState value)? signOutSuccess,
    TResult Function(DeleteAccountSuccessState value)? deleteAccountSuccess,
    TResult Function(AuthFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AuthSuccessState implements AuthState {
  const factory AuthSuccessState({final String? message, final Member? user}) =
      _$AuthSuccessState;

  String? get message;
  Member? get user;
  @JsonKey(ignore: true)
  _$$AuthSuccessStateCopyWith<_$AuthSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutSuccessStateCopyWith<$Res> {
  factory _$$SignOutSuccessStateCopyWith(_$SignOutSuccessState value,
          $Res Function(_$SignOutSuccessState) then) =
      __$$SignOutSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SignOutSuccessStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignOutSuccessState>
    implements _$$SignOutSuccessStateCopyWith<$Res> {
  __$$SignOutSuccessStateCopyWithImpl(
      _$SignOutSuccessState _value, $Res Function(_$SignOutSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SignOutSuccessState(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignOutSuccessState implements SignOutSuccessState {
  const _$SignOutSuccessState({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthState.signOutSuccess(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignOutSuccessState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignOutSuccessStateCopyWith<_$SignOutSuccessState> get copyWith =>
      __$$SignOutSuccessStateCopyWithImpl<_$SignOutSuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message, Member? user) success,
    required TResult Function(String? message) signOutSuccess,
    required TResult Function(String? message) deleteAccountSuccess,
    required TResult Function(String message) failure,
  }) {
    return signOutSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message, Member? user)? success,
    TResult? Function(String? message)? signOutSuccess,
    TResult? Function(String? message)? deleteAccountSuccess,
    TResult? Function(String message)? failure,
  }) {
    return signOutSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message, Member? user)? success,
    TResult Function(String? message)? signOutSuccess,
    TResult Function(String? message)? deleteAccountSuccess,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (signOutSuccess != null) {
      return signOutSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthSuccessState value) success,
    required TResult Function(SignOutSuccessState value) signOutSuccess,
    required TResult Function(DeleteAccountSuccessState value)
        deleteAccountSuccess,
    required TResult Function(AuthFailureState value) failure,
  }) {
    return signOutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(AuthLoadingState value)? loading,
    TResult? Function(AuthSuccessState value)? success,
    TResult? Function(SignOutSuccessState value)? signOutSuccess,
    TResult? Function(DeleteAccountSuccessState value)? deleteAccountSuccess,
    TResult? Function(AuthFailureState value)? failure,
  }) {
    return signOutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthSuccessState value)? success,
    TResult Function(SignOutSuccessState value)? signOutSuccess,
    TResult Function(DeleteAccountSuccessState value)? deleteAccountSuccess,
    TResult Function(AuthFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (signOutSuccess != null) {
      return signOutSuccess(this);
    }
    return orElse();
  }
}

abstract class SignOutSuccessState implements AuthState {
  const factory SignOutSuccessState({final String? message}) =
      _$SignOutSuccessState;

  String? get message;
  @JsonKey(ignore: true)
  _$$SignOutSuccessStateCopyWith<_$SignOutSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAccountSuccessStateCopyWith<$Res> {
  factory _$$DeleteAccountSuccessStateCopyWith(
          _$DeleteAccountSuccessState value,
          $Res Function(_$DeleteAccountSuccessState) then) =
      __$$DeleteAccountSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$DeleteAccountSuccessStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$DeleteAccountSuccessState>
    implements _$$DeleteAccountSuccessStateCopyWith<$Res> {
  __$$DeleteAccountSuccessStateCopyWithImpl(_$DeleteAccountSuccessState _value,
      $Res Function(_$DeleteAccountSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$DeleteAccountSuccessState(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeleteAccountSuccessState implements DeleteAccountSuccessState {
  const _$DeleteAccountSuccessState({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthState.deleteAccountSuccess(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountSuccessState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAccountSuccessStateCopyWith<_$DeleteAccountSuccessState>
      get copyWith => __$$DeleteAccountSuccessStateCopyWithImpl<
          _$DeleteAccountSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message, Member? user) success,
    required TResult Function(String? message) signOutSuccess,
    required TResult Function(String? message) deleteAccountSuccess,
    required TResult Function(String message) failure,
  }) {
    return deleteAccountSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message, Member? user)? success,
    TResult? Function(String? message)? signOutSuccess,
    TResult? Function(String? message)? deleteAccountSuccess,
    TResult? Function(String message)? failure,
  }) {
    return deleteAccountSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message, Member? user)? success,
    TResult Function(String? message)? signOutSuccess,
    TResult Function(String? message)? deleteAccountSuccess,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (deleteAccountSuccess != null) {
      return deleteAccountSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthSuccessState value) success,
    required TResult Function(SignOutSuccessState value) signOutSuccess,
    required TResult Function(DeleteAccountSuccessState value)
        deleteAccountSuccess,
    required TResult Function(AuthFailureState value) failure,
  }) {
    return deleteAccountSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(AuthLoadingState value)? loading,
    TResult? Function(AuthSuccessState value)? success,
    TResult? Function(SignOutSuccessState value)? signOutSuccess,
    TResult? Function(DeleteAccountSuccessState value)? deleteAccountSuccess,
    TResult? Function(AuthFailureState value)? failure,
  }) {
    return deleteAccountSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthSuccessState value)? success,
    TResult Function(SignOutSuccessState value)? signOutSuccess,
    TResult Function(DeleteAccountSuccessState value)? deleteAccountSuccess,
    TResult Function(AuthFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (deleteAccountSuccess != null) {
      return deleteAccountSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteAccountSuccessState implements AuthState {
  const factory DeleteAccountSuccessState({final String? message}) =
      _$DeleteAccountSuccessState;

  String? get message;
  @JsonKey(ignore: true)
  _$$DeleteAccountSuccessStateCopyWith<_$DeleteAccountSuccessState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthFailureStateCopyWith<$Res> {
  factory _$$AuthFailureStateCopyWith(
          _$AuthFailureState value, $Res Function(_$AuthFailureState) then) =
      __$$AuthFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthFailureStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthFailureState>
    implements _$$AuthFailureStateCopyWith<$Res> {
  __$$AuthFailureStateCopyWithImpl(
      _$AuthFailureState _value, $Res Function(_$AuthFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthFailureState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthFailureState implements AuthFailureState {
  const _$AuthFailureState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailureState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFailureStateCopyWith<_$AuthFailureState> get copyWith =>
      __$$AuthFailureStateCopyWithImpl<_$AuthFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message, Member? user) success,
    required TResult Function(String? message) signOutSuccess,
    required TResult Function(String? message) deleteAccountSuccess,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message, Member? user)? success,
    TResult? Function(String? message)? signOutSuccess,
    TResult? Function(String? message)? deleteAccountSuccess,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message, Member? user)? success,
    TResult Function(String? message)? signOutSuccess,
    TResult Function(String? message)? deleteAccountSuccess,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthSuccessState value) success,
    required TResult Function(SignOutSuccessState value) signOutSuccess,
    required TResult Function(DeleteAccountSuccessState value)
        deleteAccountSuccess,
    required TResult Function(AuthFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(AuthLoadingState value)? loading,
    TResult? Function(AuthSuccessState value)? success,
    TResult? Function(SignOutSuccessState value)? signOutSuccess,
    TResult? Function(DeleteAccountSuccessState value)? deleteAccountSuccess,
    TResult? Function(AuthFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthSuccessState value)? success,
    TResult Function(SignOutSuccessState value)? signOutSuccess,
    TResult Function(DeleteAccountSuccessState value)? deleteAccountSuccess,
    TResult Function(AuthFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AuthFailureState implements AuthState {
  const factory AuthFailureState({required final String message}) =
      _$AuthFailureState;

  String get message;
  @JsonKey(ignore: true)
  _$$AuthFailureStateCopyWith<_$AuthFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
