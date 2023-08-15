// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnnouncementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String decs, String phone,
            String address, Category category, double price, List<File> files)
        upload,
    required TResult Function(Announcement announcement, String categoryName)
        deleteData,
    required TResult Function(List<File> images) getImages,
    required TResult Function() clearImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String decs, String phone, String address,
            Category category, double price, List<File> files)?
        upload,
    TResult? Function(Announcement announcement, String categoryName)?
        deleteData,
    TResult? Function(List<File> images)? getImages,
    TResult? Function()? clearImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String decs, String phone, String address,
            Category category, double price, List<File> files)?
        upload,
    TResult Function(Announcement announcement, String categoryName)?
        deleteData,
    TResult Function(List<File> images)? getImages,
    TResult Function()? clearImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadEvent value) upload,
    required TResult Function(DeleteDataEvent value) deleteData,
    required TResult Function(GetImagesEvent value) getImages,
    required TResult Function(ClearImagesEvent value) clearImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadEvent value)? upload,
    TResult? Function(DeleteDataEvent value)? deleteData,
    TResult? Function(GetImagesEvent value)? getImages,
    TResult? Function(ClearImagesEvent value)? clearImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadEvent value)? upload,
    TResult Function(DeleteDataEvent value)? deleteData,
    TResult Function(GetImagesEvent value)? getImages,
    TResult Function(ClearImagesEvent value)? clearImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementEventCopyWith<$Res> {
  factory $AnnouncementEventCopyWith(
          AnnouncementEvent value, $Res Function(AnnouncementEvent) then) =
      _$AnnouncementEventCopyWithImpl<$Res, AnnouncementEvent>;
}

/// @nodoc
class _$AnnouncementEventCopyWithImpl<$Res, $Val extends AnnouncementEvent>
    implements $AnnouncementEventCopyWith<$Res> {
  _$AnnouncementEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UploadEventCopyWith<$Res> {
  factory _$$UploadEventCopyWith(
          _$UploadEvent value, $Res Function(_$UploadEvent) then) =
      __$$UploadEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String decs,
      String phone,
      String address,
      Category category,
      double price,
      List<File> files});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$UploadEventCopyWithImpl<$Res>
    extends _$AnnouncementEventCopyWithImpl<$Res, _$UploadEvent>
    implements _$$UploadEventCopyWith<$Res> {
  __$$UploadEventCopyWithImpl(
      _$UploadEvent _value, $Res Function(_$UploadEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? decs = null,
    Object? phone = null,
    Object? address = null,
    Object? category = null,
    Object? price = null,
    Object? files = null,
  }) {
    return _then(_$UploadEvent(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      decs: null == decs
          ? _value.decs
          : decs // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$UploadEvent implements UploadEvent {
  const _$UploadEvent(
      {required this.name,
      required this.decs,
      required this.phone,
      required this.address,
      required this.category,
      required this.price,
      required final List<File> files})
      : _files = files;

  @override
  final String name;
  @override
  final String decs;
  @override
  final String phone;
  @override
  final String address;
  @override
  final Category category;
  @override
  final double price;
  final List<File> _files;
  @override
  List<File> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  String toString() {
    return 'AnnouncementEvent.upload(name: $name, decs: $decs, phone: $phone, address: $address, category: $category, price: $price, files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadEvent &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.decs, decs) || other.decs == decs) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, decs, phone, address,
      category, price, const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadEventCopyWith<_$UploadEvent> get copyWith =>
      __$$UploadEventCopyWithImpl<_$UploadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String decs, String phone,
            String address, Category category, double price, List<File> files)
        upload,
    required TResult Function(Announcement announcement, String categoryName)
        deleteData,
    required TResult Function(List<File> images) getImages,
    required TResult Function() clearImages,
  }) {
    return upload(name, decs, phone, address, category, price, files);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String decs, String phone, String address,
            Category category, double price, List<File> files)?
        upload,
    TResult? Function(Announcement announcement, String categoryName)?
        deleteData,
    TResult? Function(List<File> images)? getImages,
    TResult? Function()? clearImages,
  }) {
    return upload?.call(name, decs, phone, address, category, price, files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String decs, String phone, String address,
            Category category, double price, List<File> files)?
        upload,
    TResult Function(Announcement announcement, String categoryName)?
        deleteData,
    TResult Function(List<File> images)? getImages,
    TResult Function()? clearImages,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(name, decs, phone, address, category, price, files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadEvent value) upload,
    required TResult Function(DeleteDataEvent value) deleteData,
    required TResult Function(GetImagesEvent value) getImages,
    required TResult Function(ClearImagesEvent value) clearImages,
  }) {
    return upload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadEvent value)? upload,
    TResult? Function(DeleteDataEvent value)? deleteData,
    TResult? Function(GetImagesEvent value)? getImages,
    TResult? Function(ClearImagesEvent value)? clearImages,
  }) {
    return upload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadEvent value)? upload,
    TResult Function(DeleteDataEvent value)? deleteData,
    TResult Function(GetImagesEvent value)? getImages,
    TResult Function(ClearImagesEvent value)? clearImages,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(this);
    }
    return orElse();
  }
}

abstract class UploadEvent implements AnnouncementEvent {
  const factory UploadEvent(
      {required final String name,
      required final String decs,
      required final String phone,
      required final String address,
      required final Category category,
      required final double price,
      required final List<File> files}) = _$UploadEvent;

  String get name;
  String get decs;
  String get phone;
  String get address;
  Category get category;
  double get price;
  List<File> get files;
  @JsonKey(ignore: true)
  _$$UploadEventCopyWith<_$UploadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteDataEventCopyWith<$Res> {
  factory _$$DeleteDataEventCopyWith(
          _$DeleteDataEvent value, $Res Function(_$DeleteDataEvent) then) =
      __$$DeleteDataEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Announcement announcement, String categoryName});

  $AnnouncementCopyWith<$Res> get announcement;
}

/// @nodoc
class __$$DeleteDataEventCopyWithImpl<$Res>
    extends _$AnnouncementEventCopyWithImpl<$Res, _$DeleteDataEvent>
    implements _$$DeleteDataEventCopyWith<$Res> {
  __$$DeleteDataEventCopyWithImpl(
      _$DeleteDataEvent _value, $Res Function(_$DeleteDataEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? announcement = null,
    Object? categoryName = null,
  }) {
    return _then(_$DeleteDataEvent(
      null == announcement
          ? _value.announcement
          : announcement // ignore: cast_nullable_to_non_nullable
              as Announcement,
      null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AnnouncementCopyWith<$Res> get announcement {
    return $AnnouncementCopyWith<$Res>(_value.announcement, (value) {
      return _then(_value.copyWith(announcement: value));
    });
  }
}

/// @nodoc

class _$DeleteDataEvent implements DeleteDataEvent {
  const _$DeleteDataEvent(this.announcement, this.categoryName);

  @override
  final Announcement announcement;
  @override
  final String categoryName;

  @override
  String toString() {
    return 'AnnouncementEvent.deleteData(announcement: $announcement, categoryName: $categoryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteDataEvent &&
            (identical(other.announcement, announcement) ||
                other.announcement == announcement) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, announcement, categoryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteDataEventCopyWith<_$DeleteDataEvent> get copyWith =>
      __$$DeleteDataEventCopyWithImpl<_$DeleteDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String decs, String phone,
            String address, Category category, double price, List<File> files)
        upload,
    required TResult Function(Announcement announcement, String categoryName)
        deleteData,
    required TResult Function(List<File> images) getImages,
    required TResult Function() clearImages,
  }) {
    return deleteData(announcement, categoryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String decs, String phone, String address,
            Category category, double price, List<File> files)?
        upload,
    TResult? Function(Announcement announcement, String categoryName)?
        deleteData,
    TResult? Function(List<File> images)? getImages,
    TResult? Function()? clearImages,
  }) {
    return deleteData?.call(announcement, categoryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String decs, String phone, String address,
            Category category, double price, List<File> files)?
        upload,
    TResult Function(Announcement announcement, String categoryName)?
        deleteData,
    TResult Function(List<File> images)? getImages,
    TResult Function()? clearImages,
    required TResult orElse(),
  }) {
    if (deleteData != null) {
      return deleteData(announcement, categoryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadEvent value) upload,
    required TResult Function(DeleteDataEvent value) deleteData,
    required TResult Function(GetImagesEvent value) getImages,
    required TResult Function(ClearImagesEvent value) clearImages,
  }) {
    return deleteData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadEvent value)? upload,
    TResult? Function(DeleteDataEvent value)? deleteData,
    TResult? Function(GetImagesEvent value)? getImages,
    TResult? Function(ClearImagesEvent value)? clearImages,
  }) {
    return deleteData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadEvent value)? upload,
    TResult Function(DeleteDataEvent value)? deleteData,
    TResult Function(GetImagesEvent value)? getImages,
    TResult Function(ClearImagesEvent value)? clearImages,
    required TResult orElse(),
  }) {
    if (deleteData != null) {
      return deleteData(this);
    }
    return orElse();
  }
}

abstract class DeleteDataEvent implements AnnouncementEvent {
  const factory DeleteDataEvent(
          final Announcement announcement, final String categoryName) =
      _$DeleteDataEvent;

  Announcement get announcement;
  String get categoryName;
  @JsonKey(ignore: true)
  _$$DeleteDataEventCopyWith<_$DeleteDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetImagesEventCopyWith<$Res> {
  factory _$$GetImagesEventCopyWith(
          _$GetImagesEvent value, $Res Function(_$GetImagesEvent) then) =
      __$$GetImagesEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<File> images});
}

/// @nodoc
class __$$GetImagesEventCopyWithImpl<$Res>
    extends _$AnnouncementEventCopyWithImpl<$Res, _$GetImagesEvent>
    implements _$$GetImagesEventCopyWith<$Res> {
  __$$GetImagesEventCopyWithImpl(
      _$GetImagesEvent _value, $Res Function(_$GetImagesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_$GetImagesEvent(
      null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

class _$GetImagesEvent implements GetImagesEvent {
  const _$GetImagesEvent(final List<File> images) : _images = images;

  final List<File> _images;
  @override
  List<File> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'AnnouncementEvent.getImages(images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetImagesEvent &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetImagesEventCopyWith<_$GetImagesEvent> get copyWith =>
      __$$GetImagesEventCopyWithImpl<_$GetImagesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String decs, String phone,
            String address, Category category, double price, List<File> files)
        upload,
    required TResult Function(Announcement announcement, String categoryName)
        deleteData,
    required TResult Function(List<File> images) getImages,
    required TResult Function() clearImages,
  }) {
    return getImages(images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String decs, String phone, String address,
            Category category, double price, List<File> files)?
        upload,
    TResult? Function(Announcement announcement, String categoryName)?
        deleteData,
    TResult? Function(List<File> images)? getImages,
    TResult? Function()? clearImages,
  }) {
    return getImages?.call(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String decs, String phone, String address,
            Category category, double price, List<File> files)?
        upload,
    TResult Function(Announcement announcement, String categoryName)?
        deleteData,
    TResult Function(List<File> images)? getImages,
    TResult Function()? clearImages,
    required TResult orElse(),
  }) {
    if (getImages != null) {
      return getImages(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadEvent value) upload,
    required TResult Function(DeleteDataEvent value) deleteData,
    required TResult Function(GetImagesEvent value) getImages,
    required TResult Function(ClearImagesEvent value) clearImages,
  }) {
    return getImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadEvent value)? upload,
    TResult? Function(DeleteDataEvent value)? deleteData,
    TResult? Function(GetImagesEvent value)? getImages,
    TResult? Function(ClearImagesEvent value)? clearImages,
  }) {
    return getImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadEvent value)? upload,
    TResult Function(DeleteDataEvent value)? deleteData,
    TResult Function(GetImagesEvent value)? getImages,
    TResult Function(ClearImagesEvent value)? clearImages,
    required TResult orElse(),
  }) {
    if (getImages != null) {
      return getImages(this);
    }
    return orElse();
  }
}

abstract class GetImagesEvent implements AnnouncementEvent {
  const factory GetImagesEvent(final List<File> images) = _$GetImagesEvent;

  List<File> get images;
  @JsonKey(ignore: true)
  _$$GetImagesEventCopyWith<_$GetImagesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearImagesEventCopyWith<$Res> {
  factory _$$ClearImagesEventCopyWith(
          _$ClearImagesEvent value, $Res Function(_$ClearImagesEvent) then) =
      __$$ClearImagesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearImagesEventCopyWithImpl<$Res>
    extends _$AnnouncementEventCopyWithImpl<$Res, _$ClearImagesEvent>
    implements _$$ClearImagesEventCopyWith<$Res> {
  __$$ClearImagesEventCopyWithImpl(
      _$ClearImagesEvent _value, $Res Function(_$ClearImagesEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearImagesEvent implements ClearImagesEvent {
  const _$ClearImagesEvent();

  @override
  String toString() {
    return 'AnnouncementEvent.clearImages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearImagesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String decs, String phone,
            String address, Category category, double price, List<File> files)
        upload,
    required TResult Function(Announcement announcement, String categoryName)
        deleteData,
    required TResult Function(List<File> images) getImages,
    required TResult Function() clearImages,
  }) {
    return clearImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String decs, String phone, String address,
            Category category, double price, List<File> files)?
        upload,
    TResult? Function(Announcement announcement, String categoryName)?
        deleteData,
    TResult? Function(List<File> images)? getImages,
    TResult? Function()? clearImages,
  }) {
    return clearImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String decs, String phone, String address,
            Category category, double price, List<File> files)?
        upload,
    TResult Function(Announcement announcement, String categoryName)?
        deleteData,
    TResult Function(List<File> images)? getImages,
    TResult Function()? clearImages,
    required TResult orElse(),
  }) {
    if (clearImages != null) {
      return clearImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadEvent value) upload,
    required TResult Function(DeleteDataEvent value) deleteData,
    required TResult Function(GetImagesEvent value) getImages,
    required TResult Function(ClearImagesEvent value) clearImages,
  }) {
    return clearImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadEvent value)? upload,
    TResult? Function(DeleteDataEvent value)? deleteData,
    TResult? Function(GetImagesEvent value)? getImages,
    TResult? Function(ClearImagesEvent value)? clearImages,
  }) {
    return clearImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadEvent value)? upload,
    TResult Function(DeleteDataEvent value)? deleteData,
    TResult Function(GetImagesEvent value)? getImages,
    TResult Function(ClearImagesEvent value)? clearImages,
    required TResult orElse(),
  }) {
    if (clearImages != null) {
      return clearImages(this);
    }
    return orElse();
  }
}

abstract class ClearImagesEvent implements AnnouncementEvent {
  const factory ClearImagesEvent() = _$ClearImagesEvent;
}

/// @nodoc
mixin _$AnnouncementState {
  Status get status => throw _privateConstructorUsedError;
  List<File> get images => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnnouncementStateCopyWith<AnnouncementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementStateCopyWith<$Res> {
  factory $AnnouncementStateCopyWith(
          AnnouncementState value, $Res Function(AnnouncementState) then) =
      _$AnnouncementStateCopyWithImpl<$Res, AnnouncementState>;
  @useResult
  $Res call({Status status, List<File> images, String? message});
}

/// @nodoc
class _$AnnouncementStateCopyWithImpl<$Res, $Val extends AnnouncementState>
    implements $AnnouncementStateCopyWith<$Res> {
  _$AnnouncementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? images = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnnouncementStateCopyWith<$Res>
    implements $AnnouncementStateCopyWith<$Res> {
  factory _$$_AnnouncementStateCopyWith(_$_AnnouncementState value,
          $Res Function(_$_AnnouncementState) then) =
      __$$_AnnouncementStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, List<File> images, String? message});
}

/// @nodoc
class __$$_AnnouncementStateCopyWithImpl<$Res>
    extends _$AnnouncementStateCopyWithImpl<$Res, _$_AnnouncementState>
    implements _$$_AnnouncementStateCopyWith<$Res> {
  __$$_AnnouncementStateCopyWithImpl(
      _$_AnnouncementState _value, $Res Function(_$_AnnouncementState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? images = null,
    Object? message = freezed,
  }) {
    return _then(_$_AnnouncementState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AnnouncementState implements _AnnouncementState {
  const _$_AnnouncementState(
      {required this.status, final List<File> images = const [], this.message})
      : _images = images;

  @override
  final Status status;
  final List<File> _images;
  @override
  @JsonKey()
  List<File> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'AnnouncementState(status: $status, images: $images, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnnouncementState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_images), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnnouncementStateCopyWith<_$_AnnouncementState> get copyWith =>
      __$$_AnnouncementStateCopyWithImpl<_$_AnnouncementState>(
          this, _$identity);
}

abstract class _AnnouncementState implements AnnouncementState {
  const factory _AnnouncementState(
      {required final Status status,
      final List<File> images,
      final String? message}) = _$_AnnouncementState;

  @override
  Status get status;
  @override
  List<File> get images;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_AnnouncementStateCopyWith<_$_AnnouncementState> get copyWith =>
      throw _privateConstructorUsedError;
}
