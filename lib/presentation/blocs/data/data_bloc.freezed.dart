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
    required TResult Function() categories,
    required TResult Function(String? categoryId) announcements,
    required TResult Function() myAnnouncement,
    required TResult Function() likeAnnouncement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categories,
    TResult? Function(String? categoryId)? announcements,
    TResult? Function()? myAnnouncement,
    TResult? Function()? likeAnnouncement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categories,
    TResult Function(String? categoryId)? announcements,
    TResult Function()? myAnnouncement,
    TResult Function()? likeAnnouncement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataCategoryEvent value) categories,
    required TResult Function(DataAnnouncementEvent value) announcements,
    required TResult Function(DataMyEvent value) myAnnouncement,
    required TResult Function(DataLikeEvent value) likeAnnouncement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataCategoryEvent value)? categories,
    TResult? Function(DataAnnouncementEvent value)? announcements,
    TResult? Function(DataMyEvent value)? myAnnouncement,
    TResult? Function(DataLikeEvent value)? likeAnnouncement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataCategoryEvent value)? categories,
    TResult Function(DataAnnouncementEvent value)? announcements,
    TResult Function(DataMyEvent value)? myAnnouncement,
    TResult Function(DataLikeEvent value)? likeAnnouncement,
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
    required TResult Function() categories,
    required TResult Function(String? categoryId) announcements,
    required TResult Function() myAnnouncement,
    required TResult Function() likeAnnouncement,
  }) {
    return categories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categories,
    TResult? Function(String? categoryId)? announcements,
    TResult? Function()? myAnnouncement,
    TResult? Function()? likeAnnouncement,
  }) {
    return categories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categories,
    TResult Function(String? categoryId)? announcements,
    TResult Function()? myAnnouncement,
    TResult Function()? likeAnnouncement,
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
    required TResult Function(DataCategoryEvent value) categories,
    required TResult Function(DataAnnouncementEvent value) announcements,
    required TResult Function(DataMyEvent value) myAnnouncement,
    required TResult Function(DataLikeEvent value) likeAnnouncement,
  }) {
    return categories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataCategoryEvent value)? categories,
    TResult? Function(DataAnnouncementEvent value)? announcements,
    TResult? Function(DataMyEvent value)? myAnnouncement,
    TResult? Function(DataLikeEvent value)? likeAnnouncement,
  }) {
    return categories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataCategoryEvent value)? categories,
    TResult Function(DataAnnouncementEvent value)? announcements,
    TResult Function(DataMyEvent value)? myAnnouncement,
    TResult Function(DataLikeEvent value)? likeAnnouncement,
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
abstract class _$$DataAnnouncementEventCopyWith<$Res> {
  factory _$$DataAnnouncementEventCopyWith(_$DataAnnouncementEvent value,
          $Res Function(_$DataAnnouncementEvent) then) =
      __$$DataAnnouncementEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String? categoryId});
}

/// @nodoc
class __$$DataAnnouncementEventCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res, _$DataAnnouncementEvent>
    implements _$$DataAnnouncementEventCopyWith<$Res> {
  __$$DataAnnouncementEventCopyWithImpl(_$DataAnnouncementEvent _value,
      $Res Function(_$DataAnnouncementEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
  }) {
    return _then(_$DataAnnouncementEvent(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DataAnnouncementEvent implements DataAnnouncementEvent {
  const _$DataAnnouncementEvent({this.categoryId});

  @override
  final String? categoryId;

  @override
  String toString() {
    return 'DataEvent.announcements(categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataAnnouncementEvent &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataAnnouncementEventCopyWith<_$DataAnnouncementEvent> get copyWith =>
      __$$DataAnnouncementEventCopyWithImpl<_$DataAnnouncementEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() categories,
    required TResult Function(String? categoryId) announcements,
    required TResult Function() myAnnouncement,
    required TResult Function() likeAnnouncement,
  }) {
    return announcements(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categories,
    TResult? Function(String? categoryId)? announcements,
    TResult? Function()? myAnnouncement,
    TResult? Function()? likeAnnouncement,
  }) {
    return announcements?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categories,
    TResult Function(String? categoryId)? announcements,
    TResult Function()? myAnnouncement,
    TResult Function()? likeAnnouncement,
    required TResult orElse(),
  }) {
    if (announcements != null) {
      return announcements(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataCategoryEvent value) categories,
    required TResult Function(DataAnnouncementEvent value) announcements,
    required TResult Function(DataMyEvent value) myAnnouncement,
    required TResult Function(DataLikeEvent value) likeAnnouncement,
  }) {
    return announcements(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataCategoryEvent value)? categories,
    TResult? Function(DataAnnouncementEvent value)? announcements,
    TResult? Function(DataMyEvent value)? myAnnouncement,
    TResult? Function(DataLikeEvent value)? likeAnnouncement,
  }) {
    return announcements?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataCategoryEvent value)? categories,
    TResult Function(DataAnnouncementEvent value)? announcements,
    TResult Function(DataMyEvent value)? myAnnouncement,
    TResult Function(DataLikeEvent value)? likeAnnouncement,
    required TResult orElse(),
  }) {
    if (announcements != null) {
      return announcements(this);
    }
    return orElse();
  }
}

abstract class DataAnnouncementEvent implements DataEvent {
  const factory DataAnnouncementEvent({final String? categoryId}) =
      _$DataAnnouncementEvent;

  String? get categoryId;
  @JsonKey(ignore: true)
  _$$DataAnnouncementEventCopyWith<_$DataAnnouncementEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataMyEventCopyWith<$Res> {
  factory _$$DataMyEventCopyWith(
          _$DataMyEvent value, $Res Function(_$DataMyEvent) then) =
      __$$DataMyEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataMyEventCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res, _$DataMyEvent>
    implements _$$DataMyEventCopyWith<$Res> {
  __$$DataMyEventCopyWithImpl(
      _$DataMyEvent _value, $Res Function(_$DataMyEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DataMyEvent implements DataMyEvent {
  const _$DataMyEvent();

  @override
  String toString() {
    return 'DataEvent.myAnnouncement()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataMyEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() categories,
    required TResult Function(String? categoryId) announcements,
    required TResult Function() myAnnouncement,
    required TResult Function() likeAnnouncement,
  }) {
    return myAnnouncement();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categories,
    TResult? Function(String? categoryId)? announcements,
    TResult? Function()? myAnnouncement,
    TResult? Function()? likeAnnouncement,
  }) {
    return myAnnouncement?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categories,
    TResult Function(String? categoryId)? announcements,
    TResult Function()? myAnnouncement,
    TResult Function()? likeAnnouncement,
    required TResult orElse(),
  }) {
    if (myAnnouncement != null) {
      return myAnnouncement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataCategoryEvent value) categories,
    required TResult Function(DataAnnouncementEvent value) announcements,
    required TResult Function(DataMyEvent value) myAnnouncement,
    required TResult Function(DataLikeEvent value) likeAnnouncement,
  }) {
    return myAnnouncement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataCategoryEvent value)? categories,
    TResult? Function(DataAnnouncementEvent value)? announcements,
    TResult? Function(DataMyEvent value)? myAnnouncement,
    TResult? Function(DataLikeEvent value)? likeAnnouncement,
  }) {
    return myAnnouncement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataCategoryEvent value)? categories,
    TResult Function(DataAnnouncementEvent value)? announcements,
    TResult Function(DataMyEvent value)? myAnnouncement,
    TResult Function(DataLikeEvent value)? likeAnnouncement,
    required TResult orElse(),
  }) {
    if (myAnnouncement != null) {
      return myAnnouncement(this);
    }
    return orElse();
  }
}

abstract class DataMyEvent implements DataEvent {
  const factory DataMyEvent() = _$DataMyEvent;
}

/// @nodoc
abstract class _$$DataLikeEventCopyWith<$Res> {
  factory _$$DataLikeEventCopyWith(
          _$DataLikeEvent value, $Res Function(_$DataLikeEvent) then) =
      __$$DataLikeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataLikeEventCopyWithImpl<$Res>
    extends _$DataEventCopyWithImpl<$Res, _$DataLikeEvent>
    implements _$$DataLikeEventCopyWith<$Res> {
  __$$DataLikeEventCopyWithImpl(
      _$DataLikeEvent _value, $Res Function(_$DataLikeEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DataLikeEvent implements DataLikeEvent {
  const _$DataLikeEvent();

  @override
  String toString() {
    return 'DataEvent.likeAnnouncement()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataLikeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() categories,
    required TResult Function(String? categoryId) announcements,
    required TResult Function() myAnnouncement,
    required TResult Function() likeAnnouncement,
  }) {
    return likeAnnouncement();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categories,
    TResult? Function(String? categoryId)? announcements,
    TResult? Function()? myAnnouncement,
    TResult? Function()? likeAnnouncement,
  }) {
    return likeAnnouncement?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categories,
    TResult Function(String? categoryId)? announcements,
    TResult Function()? myAnnouncement,
    TResult Function()? likeAnnouncement,
    required TResult orElse(),
  }) {
    if (likeAnnouncement != null) {
      return likeAnnouncement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataCategoryEvent value) categories,
    required TResult Function(DataAnnouncementEvent value) announcements,
    required TResult Function(DataMyEvent value) myAnnouncement,
    required TResult Function(DataLikeEvent value) likeAnnouncement,
  }) {
    return likeAnnouncement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataCategoryEvent value)? categories,
    TResult? Function(DataAnnouncementEvent value)? announcements,
    TResult? Function(DataMyEvent value)? myAnnouncement,
    TResult? Function(DataLikeEvent value)? likeAnnouncement,
  }) {
    return likeAnnouncement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataCategoryEvent value)? categories,
    TResult Function(DataAnnouncementEvent value)? announcements,
    TResult Function(DataMyEvent value)? myAnnouncement,
    TResult Function(DataLikeEvent value)? likeAnnouncement,
    required TResult orElse(),
  }) {
    if (likeAnnouncement != null) {
      return likeAnnouncement(this);
    }
    return orElse();
  }
}

abstract class DataLikeEvent implements DataEvent {
  const factory DataLikeEvent() = _$DataLikeEvent;
}

/// @nodoc
mixin _$DataState {
  DataStatus get status => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;
  String? get selectedCategoryId => throw _privateConstructorUsedError;
  List<Announcement> get data => throw _privateConstructorUsedError;
  List<Announcement> get myData => throw _privateConstructorUsedError;
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
      String? selectedCategoryId,
      List<Announcement> data,
      List<Announcement> myData,
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
    Object? selectedCategoryId = freezed,
    Object? data = null,
    Object? myData = null,
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
      selectedCategoryId: freezed == selectedCategoryId
          ? _value.selectedCategoryId
          : selectedCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
      myData: null == myData
          ? _value.myData
          : myData // ignore: cast_nullable_to_non_nullable
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
      String? selectedCategoryId,
      List<Announcement> data,
      List<Announcement> myData,
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
    Object? selectedCategoryId = freezed,
    Object? data = null,
    Object? myData = null,
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
      selectedCategoryId: freezed == selectedCategoryId
          ? _value.selectedCategoryId
          : selectedCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
      myData: null == myData
          ? _value._myData
          : myData // ignore: cast_nullable_to_non_nullable
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
      this.selectedCategoryId,
      required final List<Announcement> data,
      required final List<Announcement> myData,
      this.message})
      : _categories = categories,
        _data = data,
        _myData = myData;

  @override
  final DataStatus status;
  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final String? selectedCategoryId;
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

  @override
  final String? message;

  @override
  String toString() {
    return 'DataState(status: $status, categories: $categories, selectedCategoryId: $selectedCategoryId, data: $data, myData: $myData, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.selectedCategoryId, selectedCategoryId) ||
                other.selectedCategoryId == selectedCategoryId) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._myData, _myData) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_categories),
      selectedCategoryId,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_myData),
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
      final String? selectedCategoryId,
      required final List<Announcement> data,
      required final List<Announcement> myData,
      final String? message}) = _$_DataState;

  @override
  DataStatus get status;
  @override
  List<Category> get categories;
  @override
  String? get selectedCategoryId;
  @override
  List<Announcement> get data;
  @override
  List<Announcement> get myData;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_DataStateCopyWith<_$_DataState> get copyWith =>
      throw _privateConstructorUsedError;
}
