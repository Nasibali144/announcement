// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() allAnnouncement,
    required TResult Function() categories,
    required TResult Function(String id) partAnnouncement,
    required TResult Function(String uid) myAnnouncement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allAnnouncement,
    TResult? Function()? categories,
    TResult? Function(String id)? partAnnouncement,
    TResult? Function(String uid)? myAnnouncement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allAnnouncement,
    TResult Function()? categories,
    TResult Function(String id)? partAnnouncement,
    TResult Function(String uid)? myAnnouncement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataAllEvent value) allAnnouncement,
    required TResult Function(DataCategoryEvent value) categories,
    required TResult Function(DataPartEvent value) partAnnouncement,
    required TResult Function(DataMyEvent value) myAnnouncement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataAllEvent value)? allAnnouncement,
    TResult? Function(DataCategoryEvent value)? categories,
    TResult? Function(DataPartEvent value)? partAnnouncement,
    TResult? Function(DataMyEvent value)? myAnnouncement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataAllEvent value)? allAnnouncement,
    TResult Function(DataCategoryEvent value)? categories,
    TResult Function(DataPartEvent value)? partAnnouncement,
    TResult Function(DataMyEvent value)? myAnnouncement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataEventCopyWith<$Res> {
  factory $DataEventCopyWith(DataEvent value, $Res Function(DataEvent) then) =
      _$DataEventCopyWithImpl<$Res, DataEvent>;
}

/// @nodoc
class _$DataEventCopyWithImpl<$Res, $Val extends DataEvent>
    implements $DataEventCopyWith<$Res> {
  _$DataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DataAllEventCopyWith<$Res> {
  factory _$$DataAllEventCopyWith(
          _$DataAllEvent value, $Res Function(_$DataAllEvent) then) =
      __$$DataAllEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataAllEventCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res, _$DataAllEvent>
    implements _$$DataAllEventCopyWith<$Res> {
  __$$DataAllEventCopyWithImpl(
      _$DataAllEvent _value, $Res Function(_$DataAllEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DataAllEvent implements DataAllEvent {
  const _$DataAllEvent();

  @override
  String toString() {
    return 'DataEvent.allAnnouncement()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataAllEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() allAnnouncement,
    required TResult Function() categories,
    required TResult Function(String id) partAnnouncement,
    required TResult Function(String uid) myAnnouncement,
  }) {
    return allAnnouncement();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allAnnouncement,
    TResult? Function()? categories,
    TResult? Function(String id)? partAnnouncement,
    TResult? Function(String uid)? myAnnouncement,
  }) {
    return allAnnouncement?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allAnnouncement,
    TResult Function()? categories,
    TResult Function(String id)? partAnnouncement,
    TResult Function(String uid)? myAnnouncement,
    required TResult orElse(),
  }) {
    if (allAnnouncement != null) {
      return allAnnouncement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataAllEvent value) allAnnouncement,
    required TResult Function(DataCategoryEvent value) categories,
    required TResult Function(DataPartEvent value) partAnnouncement,
    required TResult Function(DataMyEvent value) myAnnouncement,
  }) {
    return allAnnouncement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataAllEvent value)? allAnnouncement,
    TResult? Function(DataCategoryEvent value)? categories,
    TResult? Function(DataPartEvent value)? partAnnouncement,
    TResult? Function(DataMyEvent value)? myAnnouncement,
  }) {
    return allAnnouncement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataAllEvent value)? allAnnouncement,
    TResult Function(DataCategoryEvent value)? categories,
    TResult Function(DataPartEvent value)? partAnnouncement,
    TResult Function(DataMyEvent value)? myAnnouncement,
    required TResult orElse(),
  }) {
    if (allAnnouncement != null) {
      return allAnnouncement(this);
    }
    return orElse();
  }
}

abstract class DataAllEvent implements DataEvent {
  const factory DataAllEvent() = _$DataAllEvent;
}

/// @nodoc
abstract class _$$DataCategoryEventCopyWith<$Res> {
  factory _$$DataCategoryEventCopyWith(
          _$DataCategoryEvent value, $Res Function(_$DataCategoryEvent) then) =
      __$$DataCategoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataCategoryEventCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res, _$DataCategoryEvent>
    implements _$$DataCategoryEventCopyWith<$Res> {
  __$$DataCategoryEventCopyWithImpl(
      _$DataCategoryEvent _value, $Res Function(_$DataCategoryEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DataCategoryEvent implements DataCategoryEvent {
  const _$DataCategoryEvent();

  @override
  String toString() {
    return 'DataEvent.categories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataCategoryEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() allAnnouncement,
    required TResult Function() categories,
    required TResult Function(String id) partAnnouncement,
    required TResult Function(String uid) myAnnouncement,
  }) {
    return categories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allAnnouncement,
    TResult? Function()? categories,
    TResult? Function(String id)? partAnnouncement,
    TResult? Function(String uid)? myAnnouncement,
  }) {
    return categories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allAnnouncement,
    TResult Function()? categories,
    TResult Function(String id)? partAnnouncement,
    TResult Function(String uid)? myAnnouncement,
    required TResult orElse(),
  }) {
    if (categories != null) {
      return categories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataAllEvent value) allAnnouncement,
    required TResult Function(DataCategoryEvent value) categories,
    required TResult Function(DataPartEvent value) partAnnouncement,
    required TResult Function(DataMyEvent value) myAnnouncement,
  }) {
    return categories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataAllEvent value)? allAnnouncement,
    TResult? Function(DataCategoryEvent value)? categories,
    TResult? Function(DataPartEvent value)? partAnnouncement,
    TResult? Function(DataMyEvent value)? myAnnouncement,
  }) {
    return categories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataAllEvent value)? allAnnouncement,
    TResult Function(DataCategoryEvent value)? categories,
    TResult Function(DataPartEvent value)? partAnnouncement,
    TResult Function(DataMyEvent value)? myAnnouncement,
    required TResult orElse(),
  }) {
    if (categories != null) {
      return categories(this);
    }
    return orElse();
  }
}

abstract class DataCategoryEvent implements DataEvent {
  const factory DataCategoryEvent() = _$DataCategoryEvent;
}

/// @nodoc
abstract class _$$DataPartEventCopyWith<$Res> {
  factory _$$DataPartEventCopyWith(
          _$DataPartEvent value, $Res Function(_$DataPartEvent) then) =
      __$$DataPartEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DataPartEventCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res, _$DataPartEvent>
    implements _$$DataPartEventCopyWith<$Res> {
  __$$DataPartEventCopyWithImpl(
      _$DataPartEvent _value, $Res Function(_$DataPartEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DataPartEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DataPartEvent implements DataPartEvent {
  const _$DataPartEvent(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'DataEvent.partAnnouncement(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataPartEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataPartEventCopyWith<_$DataPartEvent> get copyWith =>
      __$$DataPartEventCopyWithImpl<_$DataPartEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() allAnnouncement,
    required TResult Function() categories,
    required TResult Function(String id) partAnnouncement,
    required TResult Function(String uid) myAnnouncement,
  }) {
    return partAnnouncement(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allAnnouncement,
    TResult? Function()? categories,
    TResult? Function(String id)? partAnnouncement,
    TResult? Function(String uid)? myAnnouncement,
  }) {
    return partAnnouncement?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allAnnouncement,
    TResult Function()? categories,
    TResult Function(String id)? partAnnouncement,
    TResult Function(String uid)? myAnnouncement,
    required TResult orElse(),
  }) {
    if (partAnnouncement != null) {
      return partAnnouncement(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataAllEvent value) allAnnouncement,
    required TResult Function(DataCategoryEvent value) categories,
    required TResult Function(DataPartEvent value) partAnnouncement,
    required TResult Function(DataMyEvent value) myAnnouncement,
  }) {
    return partAnnouncement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataAllEvent value)? allAnnouncement,
    TResult? Function(DataCategoryEvent value)? categories,
    TResult? Function(DataPartEvent value)? partAnnouncement,
    TResult? Function(DataMyEvent value)? myAnnouncement,
  }) {
    return partAnnouncement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataAllEvent value)? allAnnouncement,
    TResult Function(DataCategoryEvent value)? categories,
    TResult Function(DataPartEvent value)? partAnnouncement,
    TResult Function(DataMyEvent value)? myAnnouncement,
    required TResult orElse(),
  }) {
    if (partAnnouncement != null) {
      return partAnnouncement(this);
    }
    return orElse();
  }
}

abstract class DataPartEvent implements DataEvent {
  const factory DataPartEvent(final String id) = _$DataPartEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$DataPartEventCopyWith<_$DataPartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataMyEventCopyWith<$Res> {
  factory _$$DataMyEventCopyWith(
          _$DataMyEvent value, $Res Function(_$DataMyEvent) then) =
      __$$DataMyEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$DataMyEventCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res, _$DataMyEvent>
    implements _$$DataMyEventCopyWith<$Res> {
  __$$DataMyEventCopyWithImpl(
      _$DataMyEvent _value, $Res Function(_$DataMyEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$DataMyEvent(
      null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DataMyEvent implements DataMyEvent {
  const _$DataMyEvent(this.uid);

  @override
  final String uid;

  @override
  String toString() {
    return 'DataEvent.myAnnouncement(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataMyEvent &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataMyEventCopyWith<_$DataMyEvent> get copyWith =>
      __$$DataMyEventCopyWithImpl<_$DataMyEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() allAnnouncement,
    required TResult Function() categories,
    required TResult Function(String id) partAnnouncement,
    required TResult Function(String uid) myAnnouncement,
  }) {
    return myAnnouncement(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allAnnouncement,
    TResult? Function()? categories,
    TResult? Function(String id)? partAnnouncement,
    TResult? Function(String uid)? myAnnouncement,
  }) {
    return myAnnouncement?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allAnnouncement,
    TResult Function()? categories,
    TResult Function(String id)? partAnnouncement,
    TResult Function(String uid)? myAnnouncement,
    required TResult orElse(),
  }) {
    if (myAnnouncement != null) {
      return myAnnouncement(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataAllEvent value) allAnnouncement,
    required TResult Function(DataCategoryEvent value) categories,
    required TResult Function(DataPartEvent value) partAnnouncement,
    required TResult Function(DataMyEvent value) myAnnouncement,
  }) {
    return myAnnouncement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataAllEvent value)? allAnnouncement,
    TResult? Function(DataCategoryEvent value)? categories,
    TResult? Function(DataPartEvent value)? partAnnouncement,
    TResult? Function(DataMyEvent value)? myAnnouncement,
  }) {
    return myAnnouncement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataAllEvent value)? allAnnouncement,
    TResult Function(DataCategoryEvent value)? categories,
    TResult Function(DataPartEvent value)? partAnnouncement,
    TResult Function(DataMyEvent value)? myAnnouncement,
    required TResult orElse(),
  }) {
    if (myAnnouncement != null) {
      return myAnnouncement(this);
    }
    return orElse();
  }
}

abstract class DataMyEvent implements DataEvent {
  const factory DataMyEvent(final String uid) = _$DataMyEvent;

  String get uid;
  @JsonKey(ignore: true)
  _$$DataMyEventCopyWith<_$DataMyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DataState {
  DataStatus get status => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;
  List<Announcement> get data => throw _privateConstructorUsedError;
  List<Announcement> get myData => throw _privateConstructorUsedError;
  List<Announcement> get partData => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataStateCopyWith<DataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStateCopyWith<$Res> {
  factory $DataStateCopyWith(DataState value, $Res Function(DataState) then) =
      _$DataStateCopyWithImpl<$Res, DataState>;
  @useResult
  $Res call(
      {DataStatus status,
      List<Category> categories,
      List<Announcement> data,
      List<Announcement> myData,
      List<Announcement> partData,
      String? message});
}

/// @nodoc
class _$DataStateCopyWithImpl<$Res, $Val extends DataState>
    implements $DataStateCopyWith<$Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? categories = null,
    Object? data = null,
    Object? myData = null,
    Object? partData = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
      myData: null == myData
          ? _value.myData
          : myData // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
      partData: null == partData
          ? _value.partData
          : partData // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataStateCopyWith<$Res> implements $DataStateCopyWith<$Res> {
  factory _$$_DataStateCopyWith(
          _$_DataState value, $Res Function(_$_DataState) then) =
      __$$_DataStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DataStatus status,
      List<Category> categories,
      List<Announcement> data,
      List<Announcement> myData,
      List<Announcement> partData,
      String? message});
}

/// @nodoc
class __$$_DataStateCopyWithImpl<$Res>
    extends _$DataStateCopyWithImpl<$Res, _$_DataState>
    implements _$$_DataStateCopyWith<$Res> {
  __$$_DataStateCopyWithImpl(
      _$_DataState _value, $Res Function(_$_DataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? categories = null,
    Object? data = null,
    Object? myData = null,
    Object? partData = null,
    Object? message = freezed,
  }) {
    return _then(_$_DataState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
      myData: null == myData
          ? _value._myData
          : myData // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
      partData: null == partData
          ? _value._partData
          : partData // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DataState implements _DataState {
  const _$_DataState(
      {required this.status,
      required final List<Category> categories,
      required final List<Announcement> data,
      required final List<Announcement> myData,
      required final List<Announcement> partData,
      this.message})
      : _categories = categories,
        _data = data,
        _myData = myData,
        _partData = partData;

  @override
  final DataStatus status;
  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<Announcement> _data;
  @override
  List<Announcement> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  final List<Announcement> _myData;
  @override
  List<Announcement> get myData {
    if (_myData is EqualUnmodifiableListView) return _myData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myData);
  }

  final List<Announcement> _partData;
  @override
  List<Announcement> get partData {
    if (_partData is EqualUnmodifiableListView) return _partData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_partData);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'DataState(status: $status, categories: $categories, data: $data, myData: $myData, partData: $partData, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._myData, _myData) &&
            const DeepCollectionEquality().equals(other._partData, _partData) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_myData),
      const DeepCollectionEquality().hash(_partData),
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataStateCopyWith<_$_DataState> get copyWith =>
      __$$_DataStateCopyWithImpl<_$_DataState>(this, _$identity);
}

abstract class _DataState implements DataState {
  const factory _DataState(
      {required final DataStatus status,
      required final List<Category> categories,
      required final List<Announcement> data,
      required final List<Announcement> myData,
      required final List<Announcement> partData,
      final String? message}) = _$_DataState;

  @override
  DataStatus get status;
  @override
  List<Category> get categories;
  @override
  List<Announcement> get data;
  @override
  List<Announcement> get myData;
  @override
  List<Announcement> get partData;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_DataStateCopyWith<_$_DataState> get copyWith =>
      throw _privateConstructorUsedError;
}
