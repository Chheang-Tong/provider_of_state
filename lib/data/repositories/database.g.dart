// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class JsonSerializedObjects extends Table
    with TableInfo<JsonSerializedObjects, JsonSerializedObject> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  JsonSerializedObjects(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints:
        'NOT NULL CONSTRAINT json_serialized_objects_pk PRIMARY KEY AUTOINCREMENT',
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _objectTypeMeta = const VerificationMeta(
    'objectType',
  );
  late final GeneratedColumn<String> objectType = GeneratedColumn<String>(
    'object_type',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  @override
  List<GeneratedColumn> get $columns => [id, value, objectType];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'json_serialized_objects';
  @override
  VerificationContext validateIntegrity(
    Insertable<JsonSerializedObject> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    }
    if (data.containsKey('object_type')) {
      context.handle(
        _objectTypeMeta,
        objectType.isAcceptableOrUnknown(data['object_type']!, _objectTypeMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  JsonSerializedObject map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return JsonSerializedObject(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      ),
      objectType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}object_type'],
      ),
    );
  }

  @override
  JsonSerializedObjects createAlias(String alias) {
    return JsonSerializedObjects(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class JsonSerializedObject extends DataClass
    implements Insertable<JsonSerializedObject> {
  final int id;
  final String? value;
  final String? objectType;
  const JsonSerializedObject({required this.id, this.value, this.objectType});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<String>(value);
    }
    if (!nullToAbsent || objectType != null) {
      map['object_type'] = Variable<String>(objectType);
    }
    return map;
  }

  JsonSerializedObjectsCompanion toCompanion(bool nullToAbsent) {
    return JsonSerializedObjectsCompanion(
      id: Value(id),
      value: value == null && nullToAbsent
          ? const Value.absent()
          : Value(value),
      objectType: objectType == null && nullToAbsent
          ? const Value.absent()
          : Value(objectType),
    );
  }

  factory JsonSerializedObject.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return JsonSerializedObject(
      id: serializer.fromJson<int>(json['id']),
      value: serializer.fromJson<String?>(json['value']),
      objectType: serializer.fromJson<String?>(json['object_type']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'value': serializer.toJson<String?>(value),
      'object_type': serializer.toJson<String?>(objectType),
    };
  }

  JsonSerializedObject copyWith({
    int? id,
    Value<String?> value = const Value.absent(),
    Value<String?> objectType = const Value.absent(),
  }) => JsonSerializedObject(
    id: id ?? this.id,
    value: value.present ? value.value : this.value,
    objectType: objectType.present ? objectType.value : this.objectType,
  );
  JsonSerializedObject copyWithCompanion(JsonSerializedObjectsCompanion data) {
    return JsonSerializedObject(
      id: data.id.present ? data.id.value : this.id,
      value: data.value.present ? data.value.value : this.value,
      objectType: data.objectType.present
          ? data.objectType.value
          : this.objectType,
    );
  }

  @override
  String toString() {
    return (StringBuffer('JsonSerializedObject(')
          ..write('id: $id, ')
          ..write('value: $value, ')
          ..write('objectType: $objectType')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, value, objectType);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is JsonSerializedObject &&
          other.id == this.id &&
          other.value == this.value &&
          other.objectType == this.objectType);
}

class JsonSerializedObjectsCompanion
    extends UpdateCompanion<JsonSerializedObject> {
  final Value<int> id;
  final Value<String?> value;
  final Value<String?> objectType;
  const JsonSerializedObjectsCompanion({
    this.id = const Value.absent(),
    this.value = const Value.absent(),
    this.objectType = const Value.absent(),
  });
  JsonSerializedObjectsCompanion.insert({
    this.id = const Value.absent(),
    this.value = const Value.absent(),
    this.objectType = const Value.absent(),
  });
  static Insertable<JsonSerializedObject> custom({
    Expression<int>? id,
    Expression<String>? value,
    Expression<String>? objectType,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (value != null) 'value': value,
      if (objectType != null) 'object_type': objectType,
    });
  }

  JsonSerializedObjectsCompanion copyWith({
    Value<int>? id,
    Value<String?>? value,
    Value<String?>? objectType,
  }) {
    return JsonSerializedObjectsCompanion(
      id: id ?? this.id,
      value: value ?? this.value,
      objectType: objectType ?? this.objectType,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (objectType.present) {
      map['object_type'] = Variable<String>(objectType.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('JsonSerializedObjectsCompanion(')
          ..write('id: $id, ')
          ..write('value: $value, ')
          ..write('objectType: $objectType')
          ..write(')'))
        .toString();
  }
}

class MyProfile extends Table with TableInfo<MyProfile, MyProfileData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  MyProfile(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'NOT NULL CONSTRAINT my_profile_pk PRIMARY KEY',
  );
  static const VerificationMeta _firstNameMeta = const VerificationMeta(
    'firstName',
  );
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
    'first_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _lastNameMeta = const VerificationMeta(
    'lastName',
  );
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
    'last_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _fullNameMeta = const VerificationMeta(
    'fullName',
  );
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
    'full_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _imageUrlMeta = const VerificationMeta(
    'imageUrl',
  );
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
    'image_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _imageByteMeta = const VerificationMeta(
    'imageByte',
  );
  late final GeneratedColumn<Uint8List> imageByte = GeneratedColumn<Uint8List>(
    'image_byte',
    aliasedName,
    true,
    type: DriftSqlType.blob,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _phoneNumberMeta = const VerificationMeta(
    'phoneNumber',
  );
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
    'phone_number',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _addressMeta = const VerificationMeta(
    'address',
  );
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
    'address',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _roleIdMeta = const VerificationMeta('roleId');
  late final GeneratedColumn<int> roleId = GeneratedColumn<int>(
    'role_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _roleNameMeta = const VerificationMeta(
    'roleName',
  );
  late final GeneratedColumn<String> roleName = GeneratedColumn<String>(
    'role_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _reportedToNameMeta = const VerificationMeta(
    'reportedToName',
  );
  late final GeneratedColumn<String> reportedToName = GeneratedColumn<String>(
    'reported_to_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _reportedToRoleMeta = const VerificationMeta(
    'reportedToRole',
  );
  late final GeneratedColumn<String> reportedToRole = GeneratedColumn<String>(
    'reported_to_role',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _checkedInRouteIdMeta = const VerificationMeta(
    'checkedInRouteId',
  );
  late final GeneratedColumn<int> checkedInRouteId = GeneratedColumn<int>(
    'checked_in_route_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _checkedInStoreIdMeta = const VerificationMeta(
    'checkedInStoreId',
  );
  late final GeneratedColumn<int> checkedInStoreId = GeneratedColumn<int>(
    'checked_in_store_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _checkedInDateTimeMeta = const VerificationMeta(
    'checkedInDateTime',
  );
  late final GeneratedColumn<String> checkedInDateTime =
      GeneratedColumn<String>(
        'checked_in_date_time',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        $customConstraints: '',
      );
  static const VerificationMeta _checkedInStoreNameMeta =
      const VerificationMeta('checkedInStoreName');
  late final GeneratedColumn<String> checkedInStoreName =
      GeneratedColumn<String>(
        'checked_in_store_name',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        $customConstraints: '',
      );
  static const VerificationMeta _checkedInStoreCodeMeta =
      const VerificationMeta('checkedInStoreCode');
  late final GeneratedColumn<String> checkedInStoreCode =
      GeneratedColumn<String>(
        'checked_in_store_code',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        $customConstraints: '',
      );
  static const VerificationMeta _todayRoutePlanCountMeta =
      const VerificationMeta('todayRoutePlanCount');
  late final GeneratedColumn<int> todayRoutePlanCount = GeneratedColumn<int>(
    'today_route_plan_count',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _uncompletedOrderCountMeta =
      const VerificationMeta('uncompletedOrderCount');
  late final GeneratedColumn<int> uncompletedOrderCount = GeneratedColumn<int>(
    'uncompleted_order_count',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    firstName,
    lastName,
    fullName,
    imageUrl,
    imageByte,
    phoneNumber,
    address,
    roleId,
    roleName,
    reportedToName,
    reportedToRole,
    checkedInRouteId,
    checkedInStoreId,
    checkedInDateTime,
    checkedInStoreName,
    checkedInStoreCode,
    todayRoutePlanCount,
    uncompletedOrderCount,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'my_profile';
  @override
  VerificationContext validateIntegrity(
    Insertable<MyProfileData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('first_name')) {
      context.handle(
        _firstNameMeta,
        firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta),
      );
    }
    if (data.containsKey('last_name')) {
      context.handle(
        _lastNameMeta,
        lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta),
      );
    }
    if (data.containsKey('full_name')) {
      context.handle(
        _fullNameMeta,
        fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta),
      );
    }
    if (data.containsKey('image_url')) {
      context.handle(
        _imageUrlMeta,
        imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta),
      );
    }
    if (data.containsKey('image_byte')) {
      context.handle(
        _imageByteMeta,
        imageByte.isAcceptableOrUnknown(data['image_byte']!, _imageByteMeta),
      );
    }
    if (data.containsKey('phone_number')) {
      context.handle(
        _phoneNumberMeta,
        phoneNumber.isAcceptableOrUnknown(
          data['phone_number']!,
          _phoneNumberMeta,
        ),
      );
    }
    if (data.containsKey('address')) {
      context.handle(
        _addressMeta,
        address.isAcceptableOrUnknown(data['address']!, _addressMeta),
      );
    }
    if (data.containsKey('role_id')) {
      context.handle(
        _roleIdMeta,
        roleId.isAcceptableOrUnknown(data['role_id']!, _roleIdMeta),
      );
    }
    if (data.containsKey('role_name')) {
      context.handle(
        _roleNameMeta,
        roleName.isAcceptableOrUnknown(data['role_name']!, _roleNameMeta),
      );
    }
    if (data.containsKey('reported_to_name')) {
      context.handle(
        _reportedToNameMeta,
        reportedToName.isAcceptableOrUnknown(
          data['reported_to_name']!,
          _reportedToNameMeta,
        ),
      );
    }
    if (data.containsKey('reported_to_role')) {
      context.handle(
        _reportedToRoleMeta,
        reportedToRole.isAcceptableOrUnknown(
          data['reported_to_role']!,
          _reportedToRoleMeta,
        ),
      );
    }
    if (data.containsKey('checked_in_route_id')) {
      context.handle(
        _checkedInRouteIdMeta,
        checkedInRouteId.isAcceptableOrUnknown(
          data['checked_in_route_id']!,
          _checkedInRouteIdMeta,
        ),
      );
    }
    if (data.containsKey('checked_in_store_id')) {
      context.handle(
        _checkedInStoreIdMeta,
        checkedInStoreId.isAcceptableOrUnknown(
          data['checked_in_store_id']!,
          _checkedInStoreIdMeta,
        ),
      );
    }
    if (data.containsKey('checked_in_date_time')) {
      context.handle(
        _checkedInDateTimeMeta,
        checkedInDateTime.isAcceptableOrUnknown(
          data['checked_in_date_time']!,
          _checkedInDateTimeMeta,
        ),
      );
    }
    if (data.containsKey('checked_in_store_name')) {
      context.handle(
        _checkedInStoreNameMeta,
        checkedInStoreName.isAcceptableOrUnknown(
          data['checked_in_store_name']!,
          _checkedInStoreNameMeta,
        ),
      );
    }
    if (data.containsKey('checked_in_store_code')) {
      context.handle(
        _checkedInStoreCodeMeta,
        checkedInStoreCode.isAcceptableOrUnknown(
          data['checked_in_store_code']!,
          _checkedInStoreCodeMeta,
        ),
      );
    }
    if (data.containsKey('today_route_plan_count')) {
      context.handle(
        _todayRoutePlanCountMeta,
        todayRoutePlanCount.isAcceptableOrUnknown(
          data['today_route_plan_count']!,
          _todayRoutePlanCountMeta,
        ),
      );
    }
    if (data.containsKey('uncompleted_order_count')) {
      context.handle(
        _uncompletedOrderCountMeta,
        uncompletedOrderCount.isAcceptableOrUnknown(
          data['uncompleted_order_count']!,
          _uncompletedOrderCountMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MyProfileData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MyProfileData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      firstName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}first_name'],
      ),
      lastName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_name'],
      ),
      fullName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}full_name'],
      ),
      imageUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_url'],
      ),
      imageByte: attachedDatabase.typeMapping.read(
        DriftSqlType.blob,
        data['${effectivePrefix}image_byte'],
      ),
      phoneNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone_number'],
      ),
      address: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address'],
      ),
      roleId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}role_id'],
      ),
      roleName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}role_name'],
      ),
      reportedToName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}reported_to_name'],
      ),
      reportedToRole: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}reported_to_role'],
      ),
      checkedInRouteId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}checked_in_route_id'],
      ),
      checkedInStoreId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}checked_in_store_id'],
      ),
      checkedInDateTime: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}checked_in_date_time'],
      ),
      checkedInStoreName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}checked_in_store_name'],
      ),
      checkedInStoreCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}checked_in_store_code'],
      ),
      todayRoutePlanCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}today_route_plan_count'],
      ),
      uncompletedOrderCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}uncompleted_order_count'],
      ),
    );
  }

  @override
  MyProfile createAlias(String alias) {
    return MyProfile(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class MyProfileData extends DataClass implements Insertable<MyProfileData> {
  final int id;
  final String? firstName;
  final String? lastName;
  final String? fullName;
  final String? imageUrl;
  final Uint8List? imageByte;
  final String? phoneNumber;
  final String? address;
  final int? roleId;
  final String? roleName;
  final String? reportedToName;
  final String? reportedToRole;
  final int? checkedInRouteId;
  final int? checkedInStoreId;
  final String? checkedInDateTime;
  final String? checkedInStoreName;
  final String? checkedInStoreCode;
  final int? todayRoutePlanCount;
  final int? uncompletedOrderCount;
  const MyProfileData({
    required this.id,
    this.firstName,
    this.lastName,
    this.fullName,
    this.imageUrl,
    this.imageByte,
    this.phoneNumber,
    this.address,
    this.roleId,
    this.roleName,
    this.reportedToName,
    this.reportedToRole,
    this.checkedInRouteId,
    this.checkedInStoreId,
    this.checkedInDateTime,
    this.checkedInStoreName,
    this.checkedInStoreCode,
    this.todayRoutePlanCount,
    this.uncompletedOrderCount,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || firstName != null) {
      map['first_name'] = Variable<String>(firstName);
    }
    if (!nullToAbsent || lastName != null) {
      map['last_name'] = Variable<String>(lastName);
    }
    if (!nullToAbsent || fullName != null) {
      map['full_name'] = Variable<String>(fullName);
    }
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    if (!nullToAbsent || imageByte != null) {
      map['image_byte'] = Variable<Uint8List>(imageByte);
    }
    if (!nullToAbsent || phoneNumber != null) {
      map['phone_number'] = Variable<String>(phoneNumber);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    if (!nullToAbsent || roleId != null) {
      map['role_id'] = Variable<int>(roleId);
    }
    if (!nullToAbsent || roleName != null) {
      map['role_name'] = Variable<String>(roleName);
    }
    if (!nullToAbsent || reportedToName != null) {
      map['reported_to_name'] = Variable<String>(reportedToName);
    }
    if (!nullToAbsent || reportedToRole != null) {
      map['reported_to_role'] = Variable<String>(reportedToRole);
    }
    if (!nullToAbsent || checkedInRouteId != null) {
      map['checked_in_route_id'] = Variable<int>(checkedInRouteId);
    }
    if (!nullToAbsent || checkedInStoreId != null) {
      map['checked_in_store_id'] = Variable<int>(checkedInStoreId);
    }
    if (!nullToAbsent || checkedInDateTime != null) {
      map['checked_in_date_time'] = Variable<String>(checkedInDateTime);
    }
    if (!nullToAbsent || checkedInStoreName != null) {
      map['checked_in_store_name'] = Variable<String>(checkedInStoreName);
    }
    if (!nullToAbsent || checkedInStoreCode != null) {
      map['checked_in_store_code'] = Variable<String>(checkedInStoreCode);
    }
    if (!nullToAbsent || todayRoutePlanCount != null) {
      map['today_route_plan_count'] = Variable<int>(todayRoutePlanCount);
    }
    if (!nullToAbsent || uncompletedOrderCount != null) {
      map['uncompleted_order_count'] = Variable<int>(uncompletedOrderCount);
    }
    return map;
  }

  MyProfileCompanion toCompanion(bool nullToAbsent) {
    return MyProfileCompanion(
      id: Value(id),
      firstName: firstName == null && nullToAbsent
          ? const Value.absent()
          : Value(firstName),
      lastName: lastName == null && nullToAbsent
          ? const Value.absent()
          : Value(lastName),
      fullName: fullName == null && nullToAbsent
          ? const Value.absent()
          : Value(fullName),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      imageByte: imageByte == null && nullToAbsent
          ? const Value.absent()
          : Value(imageByte),
      phoneNumber: phoneNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNumber),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      roleId: roleId == null && nullToAbsent
          ? const Value.absent()
          : Value(roleId),
      roleName: roleName == null && nullToAbsent
          ? const Value.absent()
          : Value(roleName),
      reportedToName: reportedToName == null && nullToAbsent
          ? const Value.absent()
          : Value(reportedToName),
      reportedToRole: reportedToRole == null && nullToAbsent
          ? const Value.absent()
          : Value(reportedToRole),
      checkedInRouteId: checkedInRouteId == null && nullToAbsent
          ? const Value.absent()
          : Value(checkedInRouteId),
      checkedInStoreId: checkedInStoreId == null && nullToAbsent
          ? const Value.absent()
          : Value(checkedInStoreId),
      checkedInDateTime: checkedInDateTime == null && nullToAbsent
          ? const Value.absent()
          : Value(checkedInDateTime),
      checkedInStoreName: checkedInStoreName == null && nullToAbsent
          ? const Value.absent()
          : Value(checkedInStoreName),
      checkedInStoreCode: checkedInStoreCode == null && nullToAbsent
          ? const Value.absent()
          : Value(checkedInStoreCode),
      todayRoutePlanCount: todayRoutePlanCount == null && nullToAbsent
          ? const Value.absent()
          : Value(todayRoutePlanCount),
      uncompletedOrderCount: uncompletedOrderCount == null && nullToAbsent
          ? const Value.absent()
          : Value(uncompletedOrderCount),
    );
  }

  factory MyProfileData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MyProfileData(
      id: serializer.fromJson<int>(json['id']),
      firstName: serializer.fromJson<String?>(json['first_name']),
      lastName: serializer.fromJson<String?>(json['last_name']),
      fullName: serializer.fromJson<String?>(json['full_name']),
      imageUrl: serializer.fromJson<String?>(json['image_url']),
      imageByte: serializer.fromJson<Uint8List?>(json['image_byte']),
      phoneNumber: serializer.fromJson<String?>(json['phone_number']),
      address: serializer.fromJson<String?>(json['address']),
      roleId: serializer.fromJson<int?>(json['role_id']),
      roleName: serializer.fromJson<String?>(json['role_name']),
      reportedToName: serializer.fromJson<String?>(json['reported_to_name']),
      reportedToRole: serializer.fromJson<String?>(json['reported_to_role']),
      checkedInRouteId: serializer.fromJson<int?>(json['checked_in_route_id']),
      checkedInStoreId: serializer.fromJson<int?>(json['checked_in_store_id']),
      checkedInDateTime: serializer.fromJson<String?>(
        json['checked_in_date_time'],
      ),
      checkedInStoreName: serializer.fromJson<String?>(
        json['checked_in_store_name'],
      ),
      checkedInStoreCode: serializer.fromJson<String?>(
        json['checked_in_store_code'],
      ),
      todayRoutePlanCount: serializer.fromJson<int?>(
        json['today_route_plan_count'],
      ),
      uncompletedOrderCount: serializer.fromJson<int?>(
        json['uncompleted_order_count'],
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'first_name': serializer.toJson<String?>(firstName),
      'last_name': serializer.toJson<String?>(lastName),
      'full_name': serializer.toJson<String?>(fullName),
      'image_url': serializer.toJson<String?>(imageUrl),
      'image_byte': serializer.toJson<Uint8List?>(imageByte),
      'phone_number': serializer.toJson<String?>(phoneNumber),
      'address': serializer.toJson<String?>(address),
      'role_id': serializer.toJson<int?>(roleId),
      'role_name': serializer.toJson<String?>(roleName),
      'reported_to_name': serializer.toJson<String?>(reportedToName),
      'reported_to_role': serializer.toJson<String?>(reportedToRole),
      'checked_in_route_id': serializer.toJson<int?>(checkedInRouteId),
      'checked_in_store_id': serializer.toJson<int?>(checkedInStoreId),
      'checked_in_date_time': serializer.toJson<String?>(checkedInDateTime),
      'checked_in_store_name': serializer.toJson<String?>(checkedInStoreName),
      'checked_in_store_code': serializer.toJson<String?>(checkedInStoreCode),
      'today_route_plan_count': serializer.toJson<int?>(todayRoutePlanCount),
      'uncompleted_order_count': serializer.toJson<int?>(uncompletedOrderCount),
    };
  }

  MyProfileData copyWith({
    int? id,
    Value<String?> firstName = const Value.absent(),
    Value<String?> lastName = const Value.absent(),
    Value<String?> fullName = const Value.absent(),
    Value<String?> imageUrl = const Value.absent(),
    Value<Uint8List?> imageByte = const Value.absent(),
    Value<String?> phoneNumber = const Value.absent(),
    Value<String?> address = const Value.absent(),
    Value<int?> roleId = const Value.absent(),
    Value<String?> roleName = const Value.absent(),
    Value<String?> reportedToName = const Value.absent(),
    Value<String?> reportedToRole = const Value.absent(),
    Value<int?> checkedInRouteId = const Value.absent(),
    Value<int?> checkedInStoreId = const Value.absent(),
    Value<String?> checkedInDateTime = const Value.absent(),
    Value<String?> checkedInStoreName = const Value.absent(),
    Value<String?> checkedInStoreCode = const Value.absent(),
    Value<int?> todayRoutePlanCount = const Value.absent(),
    Value<int?> uncompletedOrderCount = const Value.absent(),
  }) => MyProfileData(
    id: id ?? this.id,
    firstName: firstName.present ? firstName.value : this.firstName,
    lastName: lastName.present ? lastName.value : this.lastName,
    fullName: fullName.present ? fullName.value : this.fullName,
    imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
    imageByte: imageByte.present ? imageByte.value : this.imageByte,
    phoneNumber: phoneNumber.present ? phoneNumber.value : this.phoneNumber,
    address: address.present ? address.value : this.address,
    roleId: roleId.present ? roleId.value : this.roleId,
    roleName: roleName.present ? roleName.value : this.roleName,
    reportedToName: reportedToName.present
        ? reportedToName.value
        : this.reportedToName,
    reportedToRole: reportedToRole.present
        ? reportedToRole.value
        : this.reportedToRole,
    checkedInRouteId: checkedInRouteId.present
        ? checkedInRouteId.value
        : this.checkedInRouteId,
    checkedInStoreId: checkedInStoreId.present
        ? checkedInStoreId.value
        : this.checkedInStoreId,
    checkedInDateTime: checkedInDateTime.present
        ? checkedInDateTime.value
        : this.checkedInDateTime,
    checkedInStoreName: checkedInStoreName.present
        ? checkedInStoreName.value
        : this.checkedInStoreName,
    checkedInStoreCode: checkedInStoreCode.present
        ? checkedInStoreCode.value
        : this.checkedInStoreCode,
    todayRoutePlanCount: todayRoutePlanCount.present
        ? todayRoutePlanCount.value
        : this.todayRoutePlanCount,
    uncompletedOrderCount: uncompletedOrderCount.present
        ? uncompletedOrderCount.value
        : this.uncompletedOrderCount,
  );
  MyProfileData copyWithCompanion(MyProfileCompanion data) {
    return MyProfileData(
      id: data.id.present ? data.id.value : this.id,
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      lastName: data.lastName.present ? data.lastName.value : this.lastName,
      fullName: data.fullName.present ? data.fullName.value : this.fullName,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      imageByte: data.imageByte.present ? data.imageByte.value : this.imageByte,
      phoneNumber: data.phoneNumber.present
          ? data.phoneNumber.value
          : this.phoneNumber,
      address: data.address.present ? data.address.value : this.address,
      roleId: data.roleId.present ? data.roleId.value : this.roleId,
      roleName: data.roleName.present ? data.roleName.value : this.roleName,
      reportedToName: data.reportedToName.present
          ? data.reportedToName.value
          : this.reportedToName,
      reportedToRole: data.reportedToRole.present
          ? data.reportedToRole.value
          : this.reportedToRole,
      checkedInRouteId: data.checkedInRouteId.present
          ? data.checkedInRouteId.value
          : this.checkedInRouteId,
      checkedInStoreId: data.checkedInStoreId.present
          ? data.checkedInStoreId.value
          : this.checkedInStoreId,
      checkedInDateTime: data.checkedInDateTime.present
          ? data.checkedInDateTime.value
          : this.checkedInDateTime,
      checkedInStoreName: data.checkedInStoreName.present
          ? data.checkedInStoreName.value
          : this.checkedInStoreName,
      checkedInStoreCode: data.checkedInStoreCode.present
          ? data.checkedInStoreCode.value
          : this.checkedInStoreCode,
      todayRoutePlanCount: data.todayRoutePlanCount.present
          ? data.todayRoutePlanCount.value
          : this.todayRoutePlanCount,
      uncompletedOrderCount: data.uncompletedOrderCount.present
          ? data.uncompletedOrderCount.value
          : this.uncompletedOrderCount,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MyProfileData(')
          ..write('id: $id, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('fullName: $fullName, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('imageByte: $imageByte, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('address: $address, ')
          ..write('roleId: $roleId, ')
          ..write('roleName: $roleName, ')
          ..write('reportedToName: $reportedToName, ')
          ..write('reportedToRole: $reportedToRole, ')
          ..write('checkedInRouteId: $checkedInRouteId, ')
          ..write('checkedInStoreId: $checkedInStoreId, ')
          ..write('checkedInDateTime: $checkedInDateTime, ')
          ..write('checkedInStoreName: $checkedInStoreName, ')
          ..write('checkedInStoreCode: $checkedInStoreCode, ')
          ..write('todayRoutePlanCount: $todayRoutePlanCount, ')
          ..write('uncompletedOrderCount: $uncompletedOrderCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    firstName,
    lastName,
    fullName,
    imageUrl,
    $driftBlobEquality.hash(imageByte),
    phoneNumber,
    address,
    roleId,
    roleName,
    reportedToName,
    reportedToRole,
    checkedInRouteId,
    checkedInStoreId,
    checkedInDateTime,
    checkedInStoreName,
    checkedInStoreCode,
    todayRoutePlanCount,
    uncompletedOrderCount,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MyProfileData &&
          other.id == this.id &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.fullName == this.fullName &&
          other.imageUrl == this.imageUrl &&
          $driftBlobEquality.equals(other.imageByte, this.imageByte) &&
          other.phoneNumber == this.phoneNumber &&
          other.address == this.address &&
          other.roleId == this.roleId &&
          other.roleName == this.roleName &&
          other.reportedToName == this.reportedToName &&
          other.reportedToRole == this.reportedToRole &&
          other.checkedInRouteId == this.checkedInRouteId &&
          other.checkedInStoreId == this.checkedInStoreId &&
          other.checkedInDateTime == this.checkedInDateTime &&
          other.checkedInStoreName == this.checkedInStoreName &&
          other.checkedInStoreCode == this.checkedInStoreCode &&
          other.todayRoutePlanCount == this.todayRoutePlanCount &&
          other.uncompletedOrderCount == this.uncompletedOrderCount);
}

class MyProfileCompanion extends UpdateCompanion<MyProfileData> {
  final Value<int> id;
  final Value<String?> firstName;
  final Value<String?> lastName;
  final Value<String?> fullName;
  final Value<String?> imageUrl;
  final Value<Uint8List?> imageByte;
  final Value<String?> phoneNumber;
  final Value<String?> address;
  final Value<int?> roleId;
  final Value<String?> roleName;
  final Value<String?> reportedToName;
  final Value<String?> reportedToRole;
  final Value<int?> checkedInRouteId;
  final Value<int?> checkedInStoreId;
  final Value<String?> checkedInDateTime;
  final Value<String?> checkedInStoreName;
  final Value<String?> checkedInStoreCode;
  final Value<int?> todayRoutePlanCount;
  final Value<int?> uncompletedOrderCount;
  const MyProfileCompanion({
    this.id = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.fullName = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.imageByte = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.address = const Value.absent(),
    this.roleId = const Value.absent(),
    this.roleName = const Value.absent(),
    this.reportedToName = const Value.absent(),
    this.reportedToRole = const Value.absent(),
    this.checkedInRouteId = const Value.absent(),
    this.checkedInStoreId = const Value.absent(),
    this.checkedInDateTime = const Value.absent(),
    this.checkedInStoreName = const Value.absent(),
    this.checkedInStoreCode = const Value.absent(),
    this.todayRoutePlanCount = const Value.absent(),
    this.uncompletedOrderCount = const Value.absent(),
  });
  MyProfileCompanion.insert({
    this.id = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.fullName = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.imageByte = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.address = const Value.absent(),
    this.roleId = const Value.absent(),
    this.roleName = const Value.absent(),
    this.reportedToName = const Value.absent(),
    this.reportedToRole = const Value.absent(),
    this.checkedInRouteId = const Value.absent(),
    this.checkedInStoreId = const Value.absent(),
    this.checkedInDateTime = const Value.absent(),
    this.checkedInStoreName = const Value.absent(),
    this.checkedInStoreCode = const Value.absent(),
    this.todayRoutePlanCount = const Value.absent(),
    this.uncompletedOrderCount = const Value.absent(),
  });
  static Insertable<MyProfileData> custom({
    Expression<int>? id,
    Expression<String>? firstName,
    Expression<String>? lastName,
    Expression<String>? fullName,
    Expression<String>? imageUrl,
    Expression<Uint8List>? imageByte,
    Expression<String>? phoneNumber,
    Expression<String>? address,
    Expression<int>? roleId,
    Expression<String>? roleName,
    Expression<String>? reportedToName,
    Expression<String>? reportedToRole,
    Expression<int>? checkedInRouteId,
    Expression<int>? checkedInStoreId,
    Expression<String>? checkedInDateTime,
    Expression<String>? checkedInStoreName,
    Expression<String>? checkedInStoreCode,
    Expression<int>? todayRoutePlanCount,
    Expression<int>? uncompletedOrderCount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (fullName != null) 'full_name': fullName,
      if (imageUrl != null) 'image_url': imageUrl,
      if (imageByte != null) 'image_byte': imageByte,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (address != null) 'address': address,
      if (roleId != null) 'role_id': roleId,
      if (roleName != null) 'role_name': roleName,
      if (reportedToName != null) 'reported_to_name': reportedToName,
      if (reportedToRole != null) 'reported_to_role': reportedToRole,
      if (checkedInRouteId != null) 'checked_in_route_id': checkedInRouteId,
      if (checkedInStoreId != null) 'checked_in_store_id': checkedInStoreId,
      if (checkedInDateTime != null) 'checked_in_date_time': checkedInDateTime,
      if (checkedInStoreName != null)
        'checked_in_store_name': checkedInStoreName,
      if (checkedInStoreCode != null)
        'checked_in_store_code': checkedInStoreCode,
      if (todayRoutePlanCount != null)
        'today_route_plan_count': todayRoutePlanCount,
      if (uncompletedOrderCount != null)
        'uncompleted_order_count': uncompletedOrderCount,
    });
  }

  MyProfileCompanion copyWith({
    Value<int>? id,
    Value<String?>? firstName,
    Value<String?>? lastName,
    Value<String?>? fullName,
    Value<String?>? imageUrl,
    Value<Uint8List?>? imageByte,
    Value<String?>? phoneNumber,
    Value<String?>? address,
    Value<int?>? roleId,
    Value<String?>? roleName,
    Value<String?>? reportedToName,
    Value<String?>? reportedToRole,
    Value<int?>? checkedInRouteId,
    Value<int?>? checkedInStoreId,
    Value<String?>? checkedInDateTime,
    Value<String?>? checkedInStoreName,
    Value<String?>? checkedInStoreCode,
    Value<int?>? todayRoutePlanCount,
    Value<int?>? uncompletedOrderCount,
  }) {
    return MyProfileCompanion(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      fullName: fullName ?? this.fullName,
      imageUrl: imageUrl ?? this.imageUrl,
      imageByte: imageByte ?? this.imageByte,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      address: address ?? this.address,
      roleId: roleId ?? this.roleId,
      roleName: roleName ?? this.roleName,
      reportedToName: reportedToName ?? this.reportedToName,
      reportedToRole: reportedToRole ?? this.reportedToRole,
      checkedInRouteId: checkedInRouteId ?? this.checkedInRouteId,
      checkedInStoreId: checkedInStoreId ?? this.checkedInStoreId,
      checkedInDateTime: checkedInDateTime ?? this.checkedInDateTime,
      checkedInStoreName: checkedInStoreName ?? this.checkedInStoreName,
      checkedInStoreCode: checkedInStoreCode ?? this.checkedInStoreCode,
      todayRoutePlanCount: todayRoutePlanCount ?? this.todayRoutePlanCount,
      uncompletedOrderCount:
          uncompletedOrderCount ?? this.uncompletedOrderCount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (imageByte.present) {
      map['image_byte'] = Variable<Uint8List>(imageByte.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (roleId.present) {
      map['role_id'] = Variable<int>(roleId.value);
    }
    if (roleName.present) {
      map['role_name'] = Variable<String>(roleName.value);
    }
    if (reportedToName.present) {
      map['reported_to_name'] = Variable<String>(reportedToName.value);
    }
    if (reportedToRole.present) {
      map['reported_to_role'] = Variable<String>(reportedToRole.value);
    }
    if (checkedInRouteId.present) {
      map['checked_in_route_id'] = Variable<int>(checkedInRouteId.value);
    }
    if (checkedInStoreId.present) {
      map['checked_in_store_id'] = Variable<int>(checkedInStoreId.value);
    }
    if (checkedInDateTime.present) {
      map['checked_in_date_time'] = Variable<String>(checkedInDateTime.value);
    }
    if (checkedInStoreName.present) {
      map['checked_in_store_name'] = Variable<String>(checkedInStoreName.value);
    }
    if (checkedInStoreCode.present) {
      map['checked_in_store_code'] = Variable<String>(checkedInStoreCode.value);
    }
    if (todayRoutePlanCount.present) {
      map['today_route_plan_count'] = Variable<int>(todayRoutePlanCount.value);
    }
    if (uncompletedOrderCount.present) {
      map['uncompleted_order_count'] = Variable<int>(
        uncompletedOrderCount.value,
      );
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MyProfileCompanion(')
          ..write('id: $id, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('fullName: $fullName, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('imageByte: $imageByte, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('address: $address, ')
          ..write('roleId: $roleId, ')
          ..write('roleName: $roleName, ')
          ..write('reportedToName: $reportedToName, ')
          ..write('reportedToRole: $reportedToRole, ')
          ..write('checkedInRouteId: $checkedInRouteId, ')
          ..write('checkedInStoreId: $checkedInStoreId, ')
          ..write('checkedInDateTime: $checkedInDateTime, ')
          ..write('checkedInStoreName: $checkedInStoreName, ')
          ..write('checkedInStoreCode: $checkedInStoreCode, ')
          ..write('todayRoutePlanCount: $todayRoutePlanCount, ')
          ..write('uncompletedOrderCount: $uncompletedOrderCount')
          ..write(')'))
        .toString();
  }
}

class Products extends Table with TableInfo<Products, Product> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Products(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'NOT NULL CONSTRAINT products_pk PRIMARY KEY',
  );
  static const VerificationMeta _productNameMeta = const VerificationMeta(
    'productName',
  );
  late final GeneratedColumn<String> productName = GeneratedColumn<String>(
    'product_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _productCodeMeta = const VerificationMeta(
    'productCode',
  );
  late final GeneratedColumn<String> productCode = GeneratedColumn<String>(
    'product_code',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _productUnitMeta = const VerificationMeta(
    'productUnit',
  );
  late final GeneratedColumn<String> productUnit = GeneratedColumn<String>(
    'product_unit',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _productImageMeta = const VerificationMeta(
    'productImage',
  );
  late final GeneratedColumn<String> productImage = GeneratedColumn<String>(
    'product_image',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _sellingPriceMeta = const VerificationMeta(
    'sellingPrice',
  );
  late final GeneratedColumn<double> sellingPrice = GeneratedColumn<double>(
    'selling_price',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _sellingPriceBeforeDiscountMeta =
      const VerificationMeta('sellingPriceBeforeDiscount');
  late final GeneratedColumn<double> sellingPriceBeforeDiscount =
      GeneratedColumn<double>(
        'selling_price_before_discount',
        aliasedName,
        true,
        type: DriftSqlType.double,
        requiredDuringInsert: false,
        $customConstraints: '',
      );
  static const VerificationMeta _promotionIdMeta = const VerificationMeta(
    'promotionId',
  );
  late final GeneratedColumn<int> promotionId = GeneratedColumn<int>(
    'promotion_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _promotionNameMeta = const VerificationMeta(
    'promotionName',
  );
  late final GeneratedColumn<String> promotionName = GeneratedColumn<String>(
    'promotion_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _promotionDescriptionMeta =
      const VerificationMeta('promotionDescription');
  late final GeneratedColumn<String> promotionDescription =
      GeneratedColumn<String>(
        'promotion_description',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        $customConstraints: '',
      );
  static const VerificationMeta _promotionExpiryDateMeta =
      const VerificationMeta('promotionExpiryDate');
  late final GeneratedColumn<String> promotionExpiryDate =
      GeneratedColumn<String>(
        'promotion_expiry_date',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        $customConstraints: '',
      );
  static const VerificationMeta _storeIdMeta = const VerificationMeta(
    'storeId',
  );
  late final GeneratedColumn<int> storeId = GeneratedColumn<int>(
    'store_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _availableQuantityMeta = const VerificationMeta(
    'availableQuantity',
  );
  late final GeneratedColumn<int> availableQuantity = GeneratedColumn<int>(
    'available_quantity',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    productName,
    productCode,
    productUnit,
    productImage,
    sellingPrice,
    sellingPriceBeforeDiscount,
    promotionId,
    promotionName,
    promotionDescription,
    promotionExpiryDate,
    storeId,
    availableQuantity,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'products';
  @override
  VerificationContext validateIntegrity(
    Insertable<Product> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('product_name')) {
      context.handle(
        _productNameMeta,
        productName.isAcceptableOrUnknown(
          data['product_name']!,
          _productNameMeta,
        ),
      );
    }
    if (data.containsKey('product_code')) {
      context.handle(
        _productCodeMeta,
        productCode.isAcceptableOrUnknown(
          data['product_code']!,
          _productCodeMeta,
        ),
      );
    }
    if (data.containsKey('product_unit')) {
      context.handle(
        _productUnitMeta,
        productUnit.isAcceptableOrUnknown(
          data['product_unit']!,
          _productUnitMeta,
        ),
      );
    }
    if (data.containsKey('product_image')) {
      context.handle(
        _productImageMeta,
        productImage.isAcceptableOrUnknown(
          data['product_image']!,
          _productImageMeta,
        ),
      );
    }
    if (data.containsKey('selling_price')) {
      context.handle(
        _sellingPriceMeta,
        sellingPrice.isAcceptableOrUnknown(
          data['selling_price']!,
          _sellingPriceMeta,
        ),
      );
    }
    if (data.containsKey('selling_price_before_discount')) {
      context.handle(
        _sellingPriceBeforeDiscountMeta,
        sellingPriceBeforeDiscount.isAcceptableOrUnknown(
          data['selling_price_before_discount']!,
          _sellingPriceBeforeDiscountMeta,
        ),
      );
    }
    if (data.containsKey('promotion_id')) {
      context.handle(
        _promotionIdMeta,
        promotionId.isAcceptableOrUnknown(
          data['promotion_id']!,
          _promotionIdMeta,
        ),
      );
    }
    if (data.containsKey('promotion_name')) {
      context.handle(
        _promotionNameMeta,
        promotionName.isAcceptableOrUnknown(
          data['promotion_name']!,
          _promotionNameMeta,
        ),
      );
    }
    if (data.containsKey('promotion_description')) {
      context.handle(
        _promotionDescriptionMeta,
        promotionDescription.isAcceptableOrUnknown(
          data['promotion_description']!,
          _promotionDescriptionMeta,
        ),
      );
    }
    if (data.containsKey('promotion_expiry_date')) {
      context.handle(
        _promotionExpiryDateMeta,
        promotionExpiryDate.isAcceptableOrUnknown(
          data['promotion_expiry_date']!,
          _promotionExpiryDateMeta,
        ),
      );
    }
    if (data.containsKey('store_id')) {
      context.handle(
        _storeIdMeta,
        storeId.isAcceptableOrUnknown(data['store_id']!, _storeIdMeta),
      );
    }
    if (data.containsKey('available_quantity')) {
      context.handle(
        _availableQuantityMeta,
        availableQuantity.isAcceptableOrUnknown(
          data['available_quantity']!,
          _availableQuantityMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Product map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Product(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      productName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_name'],
      ),
      productCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_code'],
      ),
      productUnit: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_unit'],
      ),
      productImage: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_image'],
      ),
      sellingPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}selling_price'],
      ),
      sellingPriceBeforeDiscount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}selling_price_before_discount'],
      ),
      promotionId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}promotion_id'],
      ),
      promotionName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}promotion_name'],
      ),
      promotionDescription: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}promotion_description'],
      ),
      promotionExpiryDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}promotion_expiry_date'],
      ),
      storeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}store_id'],
      ),
      availableQuantity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}available_quantity'],
      ),
    );
  }

  @override
  Products createAlias(String alias) {
    return Products(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Product extends DataClass implements Insertable<Product> {
  final int id;
  final String? productName;
  final String? productCode;
  final String? productUnit;
  final String? productImage;
  final double? sellingPrice;
  final double? sellingPriceBeforeDiscount;
  final int? promotionId;
  final String? promotionName;
  final String? promotionDescription;
  final String? promotionExpiryDate;
  final int? storeId;
  final int? availableQuantity;
  const Product({
    required this.id,
    this.productName,
    this.productCode,
    this.productUnit,
    this.productImage,
    this.sellingPrice,
    this.sellingPriceBeforeDiscount,
    this.promotionId,
    this.promotionName,
    this.promotionDescription,
    this.promotionExpiryDate,
    this.storeId,
    this.availableQuantity,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || productName != null) {
      map['product_name'] = Variable<String>(productName);
    }
    if (!nullToAbsent || productCode != null) {
      map['product_code'] = Variable<String>(productCode);
    }
    if (!nullToAbsent || productUnit != null) {
      map['product_unit'] = Variable<String>(productUnit);
    }
    if (!nullToAbsent || productImage != null) {
      map['product_image'] = Variable<String>(productImage);
    }
    if (!nullToAbsent || sellingPrice != null) {
      map['selling_price'] = Variable<double>(sellingPrice);
    }
    if (!nullToAbsent || sellingPriceBeforeDiscount != null) {
      map['selling_price_before_discount'] = Variable<double>(
        sellingPriceBeforeDiscount,
      );
    }
    if (!nullToAbsent || promotionId != null) {
      map['promotion_id'] = Variable<int>(promotionId);
    }
    if (!nullToAbsent || promotionName != null) {
      map['promotion_name'] = Variable<String>(promotionName);
    }
    if (!nullToAbsent || promotionDescription != null) {
      map['promotion_description'] = Variable<String>(promotionDescription);
    }
    if (!nullToAbsent || promotionExpiryDate != null) {
      map['promotion_expiry_date'] = Variable<String>(promotionExpiryDate);
    }
    if (!nullToAbsent || storeId != null) {
      map['store_id'] = Variable<int>(storeId);
    }
    if (!nullToAbsent || availableQuantity != null) {
      map['available_quantity'] = Variable<int>(availableQuantity);
    }
    return map;
  }

  ProductsCompanion toCompanion(bool nullToAbsent) {
    return ProductsCompanion(
      id: Value(id),
      productName: productName == null && nullToAbsent
          ? const Value.absent()
          : Value(productName),
      productCode: productCode == null && nullToAbsent
          ? const Value.absent()
          : Value(productCode),
      productUnit: productUnit == null && nullToAbsent
          ? const Value.absent()
          : Value(productUnit),
      productImage: productImage == null && nullToAbsent
          ? const Value.absent()
          : Value(productImage),
      sellingPrice: sellingPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(sellingPrice),
      sellingPriceBeforeDiscount:
          sellingPriceBeforeDiscount == null && nullToAbsent
          ? const Value.absent()
          : Value(sellingPriceBeforeDiscount),
      promotionId: promotionId == null && nullToAbsent
          ? const Value.absent()
          : Value(promotionId),
      promotionName: promotionName == null && nullToAbsent
          ? const Value.absent()
          : Value(promotionName),
      promotionDescription: promotionDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(promotionDescription),
      promotionExpiryDate: promotionExpiryDate == null && nullToAbsent
          ? const Value.absent()
          : Value(promotionExpiryDate),
      storeId: storeId == null && nullToAbsent
          ? const Value.absent()
          : Value(storeId),
      availableQuantity: availableQuantity == null && nullToAbsent
          ? const Value.absent()
          : Value(availableQuantity),
    );
  }

  factory Product.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Product(
      id: serializer.fromJson<int>(json['id']),
      productName: serializer.fromJson<String?>(json['product_name']),
      productCode: serializer.fromJson<String?>(json['product_code']),
      productUnit: serializer.fromJson<String?>(json['product_unit']),
      productImage: serializer.fromJson<String?>(json['product_image']),
      sellingPrice: serializer.fromJson<double?>(json['selling_price']),
      sellingPriceBeforeDiscount: serializer.fromJson<double?>(
        json['selling_price_before_discount'],
      ),
      promotionId: serializer.fromJson<int?>(json['promotion_id']),
      promotionName: serializer.fromJson<String?>(json['promotion_name']),
      promotionDescription: serializer.fromJson<String?>(
        json['promotion_description'],
      ),
      promotionExpiryDate: serializer.fromJson<String?>(
        json['promotion_expiry_date'],
      ),
      storeId: serializer.fromJson<int?>(json['store_id']),
      availableQuantity: serializer.fromJson<int?>(json['available_quantity']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'product_name': serializer.toJson<String?>(productName),
      'product_code': serializer.toJson<String?>(productCode),
      'product_unit': serializer.toJson<String?>(productUnit),
      'product_image': serializer.toJson<String?>(productImage),
      'selling_price': serializer.toJson<double?>(sellingPrice),
      'selling_price_before_discount': serializer.toJson<double?>(
        sellingPriceBeforeDiscount,
      ),
      'promotion_id': serializer.toJson<int?>(promotionId),
      'promotion_name': serializer.toJson<String?>(promotionName),
      'promotion_description': serializer.toJson<String?>(promotionDescription),
      'promotion_expiry_date': serializer.toJson<String?>(promotionExpiryDate),
      'store_id': serializer.toJson<int?>(storeId),
      'available_quantity': serializer.toJson<int?>(availableQuantity),
    };
  }

  Product copyWith({
    int? id,
    Value<String?> productName = const Value.absent(),
    Value<String?> productCode = const Value.absent(),
    Value<String?> productUnit = const Value.absent(),
    Value<String?> productImage = const Value.absent(),
    Value<double?> sellingPrice = const Value.absent(),
    Value<double?> sellingPriceBeforeDiscount = const Value.absent(),
    Value<int?> promotionId = const Value.absent(),
    Value<String?> promotionName = const Value.absent(),
    Value<String?> promotionDescription = const Value.absent(),
    Value<String?> promotionExpiryDate = const Value.absent(),
    Value<int?> storeId = const Value.absent(),
    Value<int?> availableQuantity = const Value.absent(),
  }) => Product(
    id: id ?? this.id,
    productName: productName.present ? productName.value : this.productName,
    productCode: productCode.present ? productCode.value : this.productCode,
    productUnit: productUnit.present ? productUnit.value : this.productUnit,
    productImage: productImage.present ? productImage.value : this.productImage,
    sellingPrice: sellingPrice.present ? sellingPrice.value : this.sellingPrice,
    sellingPriceBeforeDiscount: sellingPriceBeforeDiscount.present
        ? sellingPriceBeforeDiscount.value
        : this.sellingPriceBeforeDiscount,
    promotionId: promotionId.present ? promotionId.value : this.promotionId,
    promotionName: promotionName.present
        ? promotionName.value
        : this.promotionName,
    promotionDescription: promotionDescription.present
        ? promotionDescription.value
        : this.promotionDescription,
    promotionExpiryDate: promotionExpiryDate.present
        ? promotionExpiryDate.value
        : this.promotionExpiryDate,
    storeId: storeId.present ? storeId.value : this.storeId,
    availableQuantity: availableQuantity.present
        ? availableQuantity.value
        : this.availableQuantity,
  );
  Product copyWithCompanion(ProductsCompanion data) {
    return Product(
      id: data.id.present ? data.id.value : this.id,
      productName: data.productName.present
          ? data.productName.value
          : this.productName,
      productCode: data.productCode.present
          ? data.productCode.value
          : this.productCode,
      productUnit: data.productUnit.present
          ? data.productUnit.value
          : this.productUnit,
      productImage: data.productImage.present
          ? data.productImage.value
          : this.productImage,
      sellingPrice: data.sellingPrice.present
          ? data.sellingPrice.value
          : this.sellingPrice,
      sellingPriceBeforeDiscount: data.sellingPriceBeforeDiscount.present
          ? data.sellingPriceBeforeDiscount.value
          : this.sellingPriceBeforeDiscount,
      promotionId: data.promotionId.present
          ? data.promotionId.value
          : this.promotionId,
      promotionName: data.promotionName.present
          ? data.promotionName.value
          : this.promotionName,
      promotionDescription: data.promotionDescription.present
          ? data.promotionDescription.value
          : this.promotionDescription,
      promotionExpiryDate: data.promotionExpiryDate.present
          ? data.promotionExpiryDate.value
          : this.promotionExpiryDate,
      storeId: data.storeId.present ? data.storeId.value : this.storeId,
      availableQuantity: data.availableQuantity.present
          ? data.availableQuantity.value
          : this.availableQuantity,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Product(')
          ..write('id: $id, ')
          ..write('productName: $productName, ')
          ..write('productCode: $productCode, ')
          ..write('productUnit: $productUnit, ')
          ..write('productImage: $productImage, ')
          ..write('sellingPrice: $sellingPrice, ')
          ..write('sellingPriceBeforeDiscount: $sellingPriceBeforeDiscount, ')
          ..write('promotionId: $promotionId, ')
          ..write('promotionName: $promotionName, ')
          ..write('promotionDescription: $promotionDescription, ')
          ..write('promotionExpiryDate: $promotionExpiryDate, ')
          ..write('storeId: $storeId, ')
          ..write('availableQuantity: $availableQuantity')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    productName,
    productCode,
    productUnit,
    productImage,
    sellingPrice,
    sellingPriceBeforeDiscount,
    promotionId,
    promotionName,
    promotionDescription,
    promotionExpiryDate,
    storeId,
    availableQuantity,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Product &&
          other.id == this.id &&
          other.productName == this.productName &&
          other.productCode == this.productCode &&
          other.productUnit == this.productUnit &&
          other.productImage == this.productImage &&
          other.sellingPrice == this.sellingPrice &&
          other.sellingPriceBeforeDiscount == this.sellingPriceBeforeDiscount &&
          other.promotionId == this.promotionId &&
          other.promotionName == this.promotionName &&
          other.promotionDescription == this.promotionDescription &&
          other.promotionExpiryDate == this.promotionExpiryDate &&
          other.storeId == this.storeId &&
          other.availableQuantity == this.availableQuantity);
}

class ProductsCompanion extends UpdateCompanion<Product> {
  final Value<int> id;
  final Value<String?> productName;
  final Value<String?> productCode;
  final Value<String?> productUnit;
  final Value<String?> productImage;
  final Value<double?> sellingPrice;
  final Value<double?> sellingPriceBeforeDiscount;
  final Value<int?> promotionId;
  final Value<String?> promotionName;
  final Value<String?> promotionDescription;
  final Value<String?> promotionExpiryDate;
  final Value<int?> storeId;
  final Value<int?> availableQuantity;
  const ProductsCompanion({
    this.id = const Value.absent(),
    this.productName = const Value.absent(),
    this.productCode = const Value.absent(),
    this.productUnit = const Value.absent(),
    this.productImage = const Value.absent(),
    this.sellingPrice = const Value.absent(),
    this.sellingPriceBeforeDiscount = const Value.absent(),
    this.promotionId = const Value.absent(),
    this.promotionName = const Value.absent(),
    this.promotionDescription = const Value.absent(),
    this.promotionExpiryDate = const Value.absent(),
    this.storeId = const Value.absent(),
    this.availableQuantity = const Value.absent(),
  });
  ProductsCompanion.insert({
    this.id = const Value.absent(),
    this.productName = const Value.absent(),
    this.productCode = const Value.absent(),
    this.productUnit = const Value.absent(),
    this.productImage = const Value.absent(),
    this.sellingPrice = const Value.absent(),
    this.sellingPriceBeforeDiscount = const Value.absent(),
    this.promotionId = const Value.absent(),
    this.promotionName = const Value.absent(),
    this.promotionDescription = const Value.absent(),
    this.promotionExpiryDate = const Value.absent(),
    this.storeId = const Value.absent(),
    this.availableQuantity = const Value.absent(),
  });
  static Insertable<Product> custom({
    Expression<int>? id,
    Expression<String>? productName,
    Expression<String>? productCode,
    Expression<String>? productUnit,
    Expression<String>? productImage,
    Expression<double>? sellingPrice,
    Expression<double>? sellingPriceBeforeDiscount,
    Expression<int>? promotionId,
    Expression<String>? promotionName,
    Expression<String>? promotionDescription,
    Expression<String>? promotionExpiryDate,
    Expression<int>? storeId,
    Expression<int>? availableQuantity,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (productName != null) 'product_name': productName,
      if (productCode != null) 'product_code': productCode,
      if (productUnit != null) 'product_unit': productUnit,
      if (productImage != null) 'product_image': productImage,
      if (sellingPrice != null) 'selling_price': sellingPrice,
      if (sellingPriceBeforeDiscount != null)
        'selling_price_before_discount': sellingPriceBeforeDiscount,
      if (promotionId != null) 'promotion_id': promotionId,
      if (promotionName != null) 'promotion_name': promotionName,
      if (promotionDescription != null)
        'promotion_description': promotionDescription,
      if (promotionExpiryDate != null)
        'promotion_expiry_date': promotionExpiryDate,
      if (storeId != null) 'store_id': storeId,
      if (availableQuantity != null) 'available_quantity': availableQuantity,
    });
  }

  ProductsCompanion copyWith({
    Value<int>? id,
    Value<String?>? productName,
    Value<String?>? productCode,
    Value<String?>? productUnit,
    Value<String?>? productImage,
    Value<double?>? sellingPrice,
    Value<double?>? sellingPriceBeforeDiscount,
    Value<int?>? promotionId,
    Value<String?>? promotionName,
    Value<String?>? promotionDescription,
    Value<String?>? promotionExpiryDate,
    Value<int?>? storeId,
    Value<int?>? availableQuantity,
  }) {
    return ProductsCompanion(
      id: id ?? this.id,
      productName: productName ?? this.productName,
      productCode: productCode ?? this.productCode,
      productUnit: productUnit ?? this.productUnit,
      productImage: productImage ?? this.productImage,
      sellingPrice: sellingPrice ?? this.sellingPrice,
      sellingPriceBeforeDiscount:
          sellingPriceBeforeDiscount ?? this.sellingPriceBeforeDiscount,
      promotionId: promotionId ?? this.promotionId,
      promotionName: promotionName ?? this.promotionName,
      promotionDescription: promotionDescription ?? this.promotionDescription,
      promotionExpiryDate: promotionExpiryDate ?? this.promotionExpiryDate,
      storeId: storeId ?? this.storeId,
      availableQuantity: availableQuantity ?? this.availableQuantity,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (productName.present) {
      map['product_name'] = Variable<String>(productName.value);
    }
    if (productCode.present) {
      map['product_code'] = Variable<String>(productCode.value);
    }
    if (productUnit.present) {
      map['product_unit'] = Variable<String>(productUnit.value);
    }
    if (productImage.present) {
      map['product_image'] = Variable<String>(productImage.value);
    }
    if (sellingPrice.present) {
      map['selling_price'] = Variable<double>(sellingPrice.value);
    }
    if (sellingPriceBeforeDiscount.present) {
      map['selling_price_before_discount'] = Variable<double>(
        sellingPriceBeforeDiscount.value,
      );
    }
    if (promotionId.present) {
      map['promotion_id'] = Variable<int>(promotionId.value);
    }
    if (promotionName.present) {
      map['promotion_name'] = Variable<String>(promotionName.value);
    }
    if (promotionDescription.present) {
      map['promotion_description'] = Variable<String>(
        promotionDescription.value,
      );
    }
    if (promotionExpiryDate.present) {
      map['promotion_expiry_date'] = Variable<String>(
        promotionExpiryDate.value,
      );
    }
    if (storeId.present) {
      map['store_id'] = Variable<int>(storeId.value);
    }
    if (availableQuantity.present) {
      map['available_quantity'] = Variable<int>(availableQuantity.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsCompanion(')
          ..write('id: $id, ')
          ..write('productName: $productName, ')
          ..write('productCode: $productCode, ')
          ..write('productUnit: $productUnit, ')
          ..write('productImage: $productImage, ')
          ..write('sellingPrice: $sellingPrice, ')
          ..write('sellingPriceBeforeDiscount: $sellingPriceBeforeDiscount, ')
          ..write('promotionId: $promotionId, ')
          ..write('promotionName: $promotionName, ')
          ..write('promotionDescription: $promotionDescription, ')
          ..write('promotionExpiryDate: $promotionExpiryDate, ')
          ..write('storeId: $storeId, ')
          ..write('availableQuantity: $availableQuantity')
          ..write(')'))
        .toString();
  }
}

class Promotions extends Table with TableInfo<Promotions, Promotion> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Promotions(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'NOT NULL CONSTRAINT promotions_pk PRIMARY KEY',
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _expiryDateMeta = const VerificationMeta(
    'expiryDate',
  );
  late final GeneratedColumn<String> expiryDate = GeneratedColumn<String>(
    'expiry_date',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _productIdMeta = const VerificationMeta(
    'productId',
  );
  late final GeneratedColumn<int> productId = GeneratedColumn<int>(
    'product_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _productNameMeta = const VerificationMeta(
    'productName',
  );
  late final GeneratedColumn<String> productName = GeneratedColumn<String>(
    'product_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _skuCodeMeta = const VerificationMeta(
    'skuCode',
  );
  late final GeneratedColumn<String> skuCode = GeneratedColumn<String>(
    'sku_code',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _productUnitMeta = const VerificationMeta(
    'productUnit',
  );
  late final GeneratedColumn<String> productUnit = GeneratedColumn<String>(
    'product_unit',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _sellingPriceMeta = const VerificationMeta(
    'sellingPrice',
  );
  late final GeneratedColumn<double> sellingPrice = GeneratedColumn<double>(
    'selling_price',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
    'image',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    description,
    expiryDate,
    productId,
    productName,
    skuCode,
    productUnit,
    sellingPrice,
    image,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'promotions';
  @override
  VerificationContext validateIntegrity(
    Insertable<Promotion> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('expiry_date')) {
      context.handle(
        _expiryDateMeta,
        expiryDate.isAcceptableOrUnknown(data['expiry_date']!, _expiryDateMeta),
      );
    }
    if (data.containsKey('product_id')) {
      context.handle(
        _productIdMeta,
        productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta),
      );
    }
    if (data.containsKey('product_name')) {
      context.handle(
        _productNameMeta,
        productName.isAcceptableOrUnknown(
          data['product_name']!,
          _productNameMeta,
        ),
      );
    }
    if (data.containsKey('sku_code')) {
      context.handle(
        _skuCodeMeta,
        skuCode.isAcceptableOrUnknown(data['sku_code']!, _skuCodeMeta),
      );
    }
    if (data.containsKey('product_unit')) {
      context.handle(
        _productUnitMeta,
        productUnit.isAcceptableOrUnknown(
          data['product_unit']!,
          _productUnitMeta,
        ),
      );
    }
    if (data.containsKey('selling_price')) {
      context.handle(
        _sellingPriceMeta,
        sellingPrice.isAcceptableOrUnknown(
          data['selling_price']!,
          _sellingPriceMeta,
        ),
      );
    }
    if (data.containsKey('image')) {
      context.handle(
        _imageMeta,
        image.isAcceptableOrUnknown(data['image']!, _imageMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Promotion map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Promotion(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      expiryDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}expiry_date'],
      ),
      productId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}product_id'],
      ),
      productName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_name'],
      ),
      skuCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sku_code'],
      ),
      productUnit: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_unit'],
      ),
      sellingPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}selling_price'],
      ),
      image: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image'],
      ),
    );
  }

  @override
  Promotions createAlias(String alias) {
    return Promotions(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Promotion extends DataClass implements Insertable<Promotion> {
  final int id;
  final String? name;
  final String? description;
  final String? expiryDate;
  final int? productId;
  final String? productName;
  final String? skuCode;
  final String? productUnit;
  final double? sellingPrice;
  final String? image;
  const Promotion({
    required this.id,
    this.name,
    this.description,
    this.expiryDate,
    this.productId,
    this.productName,
    this.skuCode,
    this.productUnit,
    this.sellingPrice,
    this.image,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || expiryDate != null) {
      map['expiry_date'] = Variable<String>(expiryDate);
    }
    if (!nullToAbsent || productId != null) {
      map['product_id'] = Variable<int>(productId);
    }
    if (!nullToAbsent || productName != null) {
      map['product_name'] = Variable<String>(productName);
    }
    if (!nullToAbsent || skuCode != null) {
      map['sku_code'] = Variable<String>(skuCode);
    }
    if (!nullToAbsent || productUnit != null) {
      map['product_unit'] = Variable<String>(productUnit);
    }
    if (!nullToAbsent || sellingPrice != null) {
      map['selling_price'] = Variable<double>(sellingPrice);
    }
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String>(image);
    }
    return map;
  }

  PromotionsCompanion toCompanion(bool nullToAbsent) {
    return PromotionsCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      expiryDate: expiryDate == null && nullToAbsent
          ? const Value.absent()
          : Value(expiryDate),
      productId: productId == null && nullToAbsent
          ? const Value.absent()
          : Value(productId),
      productName: productName == null && nullToAbsent
          ? const Value.absent()
          : Value(productName),
      skuCode: skuCode == null && nullToAbsent
          ? const Value.absent()
          : Value(skuCode),
      productUnit: productUnit == null && nullToAbsent
          ? const Value.absent()
          : Value(productUnit),
      sellingPrice: sellingPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(sellingPrice),
      image: image == null && nullToAbsent
          ? const Value.absent()
          : Value(image),
    );
  }

  factory Promotion.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Promotion(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      expiryDate: serializer.fromJson<String?>(json['expiry_date']),
      productId: serializer.fromJson<int?>(json['product_id']),
      productName: serializer.fromJson<String?>(json['product_name']),
      skuCode: serializer.fromJson<String?>(json['sku_code']),
      productUnit: serializer.fromJson<String?>(json['product_unit']),
      sellingPrice: serializer.fromJson<double?>(json['selling_price']),
      image: serializer.fromJson<String?>(json['image']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'description': serializer.toJson<String?>(description),
      'expiry_date': serializer.toJson<String?>(expiryDate),
      'product_id': serializer.toJson<int?>(productId),
      'product_name': serializer.toJson<String?>(productName),
      'sku_code': serializer.toJson<String?>(skuCode),
      'product_unit': serializer.toJson<String?>(productUnit),
      'selling_price': serializer.toJson<double?>(sellingPrice),
      'image': serializer.toJson<String?>(image),
    };
  }

  Promotion copyWith({
    int? id,
    Value<String?> name = const Value.absent(),
    Value<String?> description = const Value.absent(),
    Value<String?> expiryDate = const Value.absent(),
    Value<int?> productId = const Value.absent(),
    Value<String?> productName = const Value.absent(),
    Value<String?> skuCode = const Value.absent(),
    Value<String?> productUnit = const Value.absent(),
    Value<double?> sellingPrice = const Value.absent(),
    Value<String?> image = const Value.absent(),
  }) => Promotion(
    id: id ?? this.id,
    name: name.present ? name.value : this.name,
    description: description.present ? description.value : this.description,
    expiryDate: expiryDate.present ? expiryDate.value : this.expiryDate,
    productId: productId.present ? productId.value : this.productId,
    productName: productName.present ? productName.value : this.productName,
    skuCode: skuCode.present ? skuCode.value : this.skuCode,
    productUnit: productUnit.present ? productUnit.value : this.productUnit,
    sellingPrice: sellingPrice.present ? sellingPrice.value : this.sellingPrice,
    image: image.present ? image.value : this.image,
  );
  Promotion copyWithCompanion(PromotionsCompanion data) {
    return Promotion(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      description: data.description.present
          ? data.description.value
          : this.description,
      expiryDate: data.expiryDate.present
          ? data.expiryDate.value
          : this.expiryDate,
      productId: data.productId.present ? data.productId.value : this.productId,
      productName: data.productName.present
          ? data.productName.value
          : this.productName,
      skuCode: data.skuCode.present ? data.skuCode.value : this.skuCode,
      productUnit: data.productUnit.present
          ? data.productUnit.value
          : this.productUnit,
      sellingPrice: data.sellingPrice.present
          ? data.sellingPrice.value
          : this.sellingPrice,
      image: data.image.present ? data.image.value : this.image,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Promotion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('productId: $productId, ')
          ..write('productName: $productName, ')
          ..write('skuCode: $skuCode, ')
          ..write('productUnit: $productUnit, ')
          ..write('sellingPrice: $sellingPrice, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    description,
    expiryDate,
    productId,
    productName,
    skuCode,
    productUnit,
    sellingPrice,
    image,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Promotion &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.expiryDate == this.expiryDate &&
          other.productId == this.productId &&
          other.productName == this.productName &&
          other.skuCode == this.skuCode &&
          other.productUnit == this.productUnit &&
          other.sellingPrice == this.sellingPrice &&
          other.image == this.image);
}

class PromotionsCompanion extends UpdateCompanion<Promotion> {
  final Value<int> id;
  final Value<String?> name;
  final Value<String?> description;
  final Value<String?> expiryDate;
  final Value<int?> productId;
  final Value<String?> productName;
  final Value<String?> skuCode;
  final Value<String?> productUnit;
  final Value<double?> sellingPrice;
  final Value<String?> image;
  const PromotionsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.expiryDate = const Value.absent(),
    this.productId = const Value.absent(),
    this.productName = const Value.absent(),
    this.skuCode = const Value.absent(),
    this.productUnit = const Value.absent(),
    this.sellingPrice = const Value.absent(),
    this.image = const Value.absent(),
  });
  PromotionsCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.expiryDate = const Value.absent(),
    this.productId = const Value.absent(),
    this.productName = const Value.absent(),
    this.skuCode = const Value.absent(),
    this.productUnit = const Value.absent(),
    this.sellingPrice = const Value.absent(),
    this.image = const Value.absent(),
  });
  static Insertable<Promotion> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? expiryDate,
    Expression<int>? productId,
    Expression<String>? productName,
    Expression<String>? skuCode,
    Expression<String>? productUnit,
    Expression<double>? sellingPrice,
    Expression<String>? image,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (expiryDate != null) 'expiry_date': expiryDate,
      if (productId != null) 'product_id': productId,
      if (productName != null) 'product_name': productName,
      if (skuCode != null) 'sku_code': skuCode,
      if (productUnit != null) 'product_unit': productUnit,
      if (sellingPrice != null) 'selling_price': sellingPrice,
      if (image != null) 'image': image,
    });
  }

  PromotionsCompanion copyWith({
    Value<int>? id,
    Value<String?>? name,
    Value<String?>? description,
    Value<String?>? expiryDate,
    Value<int?>? productId,
    Value<String?>? productName,
    Value<String?>? skuCode,
    Value<String?>? productUnit,
    Value<double?>? sellingPrice,
    Value<String?>? image,
  }) {
    return PromotionsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      expiryDate: expiryDate ?? this.expiryDate,
      productId: productId ?? this.productId,
      productName: productName ?? this.productName,
      skuCode: skuCode ?? this.skuCode,
      productUnit: productUnit ?? this.productUnit,
      sellingPrice: sellingPrice ?? this.sellingPrice,
      image: image ?? this.image,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (expiryDate.present) {
      map['expiry_date'] = Variable<String>(expiryDate.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<int>(productId.value);
    }
    if (productName.present) {
      map['product_name'] = Variable<String>(productName.value);
    }
    if (skuCode.present) {
      map['sku_code'] = Variable<String>(skuCode.value);
    }
    if (productUnit.present) {
      map['product_unit'] = Variable<String>(productUnit.value);
    }
    if (sellingPrice.present) {
      map['selling_price'] = Variable<double>(sellingPrice.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PromotionsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('productId: $productId, ')
          ..write('productName: $productName, ')
          ..write('skuCode: $skuCode, ')
          ..write('productUnit: $productUnit, ')
          ..write('sellingPrice: $sellingPrice, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }
}

class Stores extends Table with TableInfo<Stores, Store> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Stores(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'NOT NULL CONSTRAINT store_pk PRIMARY KEY',
  );
  static const VerificationMeta _storeCodeMeta = const VerificationMeta(
    'storeCode',
  );
  late final GeneratedColumn<String> storeCode = GeneratedColumn<String>(
    'store_code',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _storeNameMeta = const VerificationMeta(
    'storeName',
  );
  late final GeneratedColumn<String> storeName = GeneratedColumn<String>(
    'store_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  @override
  List<GeneratedColumn> get $columns => [id, storeCode, storeName];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'stores';
  @override
  VerificationContext validateIntegrity(
    Insertable<Store> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('store_code')) {
      context.handle(
        _storeCodeMeta,
        storeCode.isAcceptableOrUnknown(data['store_code']!, _storeCodeMeta),
      );
    }
    if (data.containsKey('store_name')) {
      context.handle(
        _storeNameMeta,
        storeName.isAcceptableOrUnknown(data['store_name']!, _storeNameMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Store map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Store(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      storeCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}store_code'],
      ),
      storeName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}store_name'],
      ),
    );
  }

  @override
  Stores createAlias(String alias) {
    return Stores(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Store extends DataClass implements Insertable<Store> {
  final int id;
  final String? storeCode;
  final String? storeName;
  const Store({required this.id, this.storeCode, this.storeName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || storeCode != null) {
      map['store_code'] = Variable<String>(storeCode);
    }
    if (!nullToAbsent || storeName != null) {
      map['store_name'] = Variable<String>(storeName);
    }
    return map;
  }

  StoresCompanion toCompanion(bool nullToAbsent) {
    return StoresCompanion(
      id: Value(id),
      storeCode: storeCode == null && nullToAbsent
          ? const Value.absent()
          : Value(storeCode),
      storeName: storeName == null && nullToAbsent
          ? const Value.absent()
          : Value(storeName),
    );
  }

  factory Store.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Store(
      id: serializer.fromJson<int>(json['id']),
      storeCode: serializer.fromJson<String?>(json['store_code']),
      storeName: serializer.fromJson<String?>(json['store_name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'store_code': serializer.toJson<String?>(storeCode),
      'store_name': serializer.toJson<String?>(storeName),
    };
  }

  Store copyWith({
    int? id,
    Value<String?> storeCode = const Value.absent(),
    Value<String?> storeName = const Value.absent(),
  }) => Store(
    id: id ?? this.id,
    storeCode: storeCode.present ? storeCode.value : this.storeCode,
    storeName: storeName.present ? storeName.value : this.storeName,
  );
  Store copyWithCompanion(StoresCompanion data) {
    return Store(
      id: data.id.present ? data.id.value : this.id,
      storeCode: data.storeCode.present ? data.storeCode.value : this.storeCode,
      storeName: data.storeName.present ? data.storeName.value : this.storeName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Store(')
          ..write('id: $id, ')
          ..write('storeCode: $storeCode, ')
          ..write('storeName: $storeName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, storeCode, storeName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Store &&
          other.id == this.id &&
          other.storeCode == this.storeCode &&
          other.storeName == this.storeName);
}

class StoresCompanion extends UpdateCompanion<Store> {
  final Value<int> id;
  final Value<String?> storeCode;
  final Value<String?> storeName;
  const StoresCompanion({
    this.id = const Value.absent(),
    this.storeCode = const Value.absent(),
    this.storeName = const Value.absent(),
  });
  StoresCompanion.insert({
    this.id = const Value.absent(),
    this.storeCode = const Value.absent(),
    this.storeName = const Value.absent(),
  });
  static Insertable<Store> custom({
    Expression<int>? id,
    Expression<String>? storeCode,
    Expression<String>? storeName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (storeCode != null) 'store_code': storeCode,
      if (storeName != null) 'store_name': storeName,
    });
  }

  StoresCompanion copyWith({
    Value<int>? id,
    Value<String?>? storeCode,
    Value<String?>? storeName,
  }) {
    return StoresCompanion(
      id: id ?? this.id,
      storeCode: storeCode ?? this.storeCode,
      storeName: storeName ?? this.storeName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (storeCode.present) {
      map['store_code'] = Variable<String>(storeCode.value);
    }
    if (storeName.present) {
      map['store_name'] = Variable<String>(storeName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StoresCompanion(')
          ..write('id: $id, ')
          ..write('storeCode: $storeCode, ')
          ..write('storeName: $storeName')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final JsonSerializedObjects jsonSerializedObjects =
      JsonSerializedObjects(this);
  late final Index jsonSerializedObjectsIdUindex = Index(
    'json_serialized_objects_id_uindex',
    'CREATE UNIQUE INDEX json_serialized_objects_id_uindex ON json_serialized_objects (id)',
  );
  late final MyProfile myProfile = MyProfile(this);
  late final Index myProfileIdUindex = Index(
    'my_profile_id_uindex',
    'CREATE UNIQUE INDEX my_profile_id_uindex ON my_profile (id)',
  );
  late final Products products = Products(this);
  late final Index productsIdUindex = Index(
    'products_id_uindex',
    'CREATE UNIQUE INDEX products_id_uindex ON products (id)',
  );
  late final Promotions promotions = Promotions(this);
  late final Index promotionsIdUindex = Index(
    'promotions_id_uindex',
    'CREATE UNIQUE INDEX promotions_id_uindex ON promotions (id)',
  );
  late final Stores stores = Stores(this);
  late final Index storeIdUindex = Index(
    'store_id_uindex',
    'CREATE UNIQUE INDEX store_id_uindex ON stores (id)',
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    jsonSerializedObjects,
    jsonSerializedObjectsIdUindex,
    myProfile,
    myProfileIdUindex,
    products,
    productsIdUindex,
    promotions,
    promotionsIdUindex,
    stores,
    storeIdUindex,
  ];
}

typedef $JsonSerializedObjectsCreateCompanionBuilder =
    JsonSerializedObjectsCompanion Function({
      Value<int> id,
      Value<String?> value,
      Value<String?> objectType,
    });
typedef $JsonSerializedObjectsUpdateCompanionBuilder =
    JsonSerializedObjectsCompanion Function({
      Value<int> id,
      Value<String?> value,
      Value<String?> objectType,
    });

class $JsonSerializedObjectsFilterComposer
    extends Composer<_$AppDatabase, JsonSerializedObjects> {
  $JsonSerializedObjectsFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get objectType => $composableBuilder(
    column: $table.objectType,
    builder: (column) => ColumnFilters(column),
  );
}

class $JsonSerializedObjectsOrderingComposer
    extends Composer<_$AppDatabase, JsonSerializedObjects> {
  $JsonSerializedObjectsOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get objectType => $composableBuilder(
    column: $table.objectType,
    builder: (column) => ColumnOrderings(column),
  );
}

class $JsonSerializedObjectsAnnotationComposer
    extends Composer<_$AppDatabase, JsonSerializedObjects> {
  $JsonSerializedObjectsAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  GeneratedColumn<String> get objectType => $composableBuilder(
    column: $table.objectType,
    builder: (column) => column,
  );
}

class $JsonSerializedObjectsTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          JsonSerializedObjects,
          JsonSerializedObject,
          $JsonSerializedObjectsFilterComposer,
          $JsonSerializedObjectsOrderingComposer,
          $JsonSerializedObjectsAnnotationComposer,
          $JsonSerializedObjectsCreateCompanionBuilder,
          $JsonSerializedObjectsUpdateCompanionBuilder,
          (
            JsonSerializedObject,
            BaseReferences<
              _$AppDatabase,
              JsonSerializedObjects,
              JsonSerializedObject
            >,
          ),
          JsonSerializedObject,
          PrefetchHooks Function()
        > {
  $JsonSerializedObjectsTableManager(
    _$AppDatabase db,
    JsonSerializedObjects table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $JsonSerializedObjectsFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $JsonSerializedObjectsOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $JsonSerializedObjectsAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> value = const Value.absent(),
                Value<String?> objectType = const Value.absent(),
              }) => JsonSerializedObjectsCompanion(
                id: id,
                value: value,
                objectType: objectType,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> value = const Value.absent(),
                Value<String?> objectType = const Value.absent(),
              }) => JsonSerializedObjectsCompanion.insert(
                id: id,
                value: value,
                objectType: objectType,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $JsonSerializedObjectsProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      JsonSerializedObjects,
      JsonSerializedObject,
      $JsonSerializedObjectsFilterComposer,
      $JsonSerializedObjectsOrderingComposer,
      $JsonSerializedObjectsAnnotationComposer,
      $JsonSerializedObjectsCreateCompanionBuilder,
      $JsonSerializedObjectsUpdateCompanionBuilder,
      (
        JsonSerializedObject,
        BaseReferences<
          _$AppDatabase,
          JsonSerializedObjects,
          JsonSerializedObject
        >,
      ),
      JsonSerializedObject,
      PrefetchHooks Function()
    >;
typedef $MyProfileCreateCompanionBuilder =
    MyProfileCompanion Function({
      Value<int> id,
      Value<String?> firstName,
      Value<String?> lastName,
      Value<String?> fullName,
      Value<String?> imageUrl,
      Value<Uint8List?> imageByte,
      Value<String?> phoneNumber,
      Value<String?> address,
      Value<int?> roleId,
      Value<String?> roleName,
      Value<String?> reportedToName,
      Value<String?> reportedToRole,
      Value<int?> checkedInRouteId,
      Value<int?> checkedInStoreId,
      Value<String?> checkedInDateTime,
      Value<String?> checkedInStoreName,
      Value<String?> checkedInStoreCode,
      Value<int?> todayRoutePlanCount,
      Value<int?> uncompletedOrderCount,
    });
typedef $MyProfileUpdateCompanionBuilder =
    MyProfileCompanion Function({
      Value<int> id,
      Value<String?> firstName,
      Value<String?> lastName,
      Value<String?> fullName,
      Value<String?> imageUrl,
      Value<Uint8List?> imageByte,
      Value<String?> phoneNumber,
      Value<String?> address,
      Value<int?> roleId,
      Value<String?> roleName,
      Value<String?> reportedToName,
      Value<String?> reportedToRole,
      Value<int?> checkedInRouteId,
      Value<int?> checkedInStoreId,
      Value<String?> checkedInDateTime,
      Value<String?> checkedInStoreName,
      Value<String?> checkedInStoreCode,
      Value<int?> todayRoutePlanCount,
      Value<int?> uncompletedOrderCount,
    });

class $MyProfileFilterComposer extends Composer<_$AppDatabase, MyProfile> {
  $MyProfileFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get firstName => $composableBuilder(
    column: $table.firstName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastName => $composableBuilder(
    column: $table.lastName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fullName => $composableBuilder(
    column: $table.fullName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<Uint8List> get imageByte => $composableBuilder(
    column: $table.imageByte,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phoneNumber => $composableBuilder(
    column: $table.phoneNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get roleId => $composableBuilder(
    column: $table.roleId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get roleName => $composableBuilder(
    column: $table.roleName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get reportedToName => $composableBuilder(
    column: $table.reportedToName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get reportedToRole => $composableBuilder(
    column: $table.reportedToRole,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get checkedInRouteId => $composableBuilder(
    column: $table.checkedInRouteId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get checkedInStoreId => $composableBuilder(
    column: $table.checkedInStoreId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get checkedInDateTime => $composableBuilder(
    column: $table.checkedInDateTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get checkedInStoreName => $composableBuilder(
    column: $table.checkedInStoreName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get checkedInStoreCode => $composableBuilder(
    column: $table.checkedInStoreCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get todayRoutePlanCount => $composableBuilder(
    column: $table.todayRoutePlanCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get uncompletedOrderCount => $composableBuilder(
    column: $table.uncompletedOrderCount,
    builder: (column) => ColumnFilters(column),
  );
}

class $MyProfileOrderingComposer extends Composer<_$AppDatabase, MyProfile> {
  $MyProfileOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get firstName => $composableBuilder(
    column: $table.firstName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastName => $composableBuilder(
    column: $table.lastName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fullName => $composableBuilder(
    column: $table.fullName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<Uint8List> get imageByte => $composableBuilder(
    column: $table.imageByte,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phoneNumber => $composableBuilder(
    column: $table.phoneNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get roleId => $composableBuilder(
    column: $table.roleId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get roleName => $composableBuilder(
    column: $table.roleName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get reportedToName => $composableBuilder(
    column: $table.reportedToName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get reportedToRole => $composableBuilder(
    column: $table.reportedToRole,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get checkedInRouteId => $composableBuilder(
    column: $table.checkedInRouteId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get checkedInStoreId => $composableBuilder(
    column: $table.checkedInStoreId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get checkedInDateTime => $composableBuilder(
    column: $table.checkedInDateTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get checkedInStoreName => $composableBuilder(
    column: $table.checkedInStoreName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get checkedInStoreCode => $composableBuilder(
    column: $table.checkedInStoreCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get todayRoutePlanCount => $composableBuilder(
    column: $table.todayRoutePlanCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get uncompletedOrderCount => $composableBuilder(
    column: $table.uncompletedOrderCount,
    builder: (column) => ColumnOrderings(column),
  );
}

class $MyProfileAnnotationComposer extends Composer<_$AppDatabase, MyProfile> {
  $MyProfileAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get firstName =>
      $composableBuilder(column: $table.firstName, builder: (column) => column);

  GeneratedColumn<String> get lastName =>
      $composableBuilder(column: $table.lastName, builder: (column) => column);

  GeneratedColumn<String> get fullName =>
      $composableBuilder(column: $table.fullName, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<Uint8List> get imageByte =>
      $composableBuilder(column: $table.imageByte, builder: (column) => column);

  GeneratedColumn<String> get phoneNumber => $composableBuilder(
    column: $table.phoneNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<int> get roleId =>
      $composableBuilder(column: $table.roleId, builder: (column) => column);

  GeneratedColumn<String> get roleName =>
      $composableBuilder(column: $table.roleName, builder: (column) => column);

  GeneratedColumn<String> get reportedToName => $composableBuilder(
    column: $table.reportedToName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get reportedToRole => $composableBuilder(
    column: $table.reportedToRole,
    builder: (column) => column,
  );

  GeneratedColumn<int> get checkedInRouteId => $composableBuilder(
    column: $table.checkedInRouteId,
    builder: (column) => column,
  );

  GeneratedColumn<int> get checkedInStoreId => $composableBuilder(
    column: $table.checkedInStoreId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get checkedInDateTime => $composableBuilder(
    column: $table.checkedInDateTime,
    builder: (column) => column,
  );

  GeneratedColumn<String> get checkedInStoreName => $composableBuilder(
    column: $table.checkedInStoreName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get checkedInStoreCode => $composableBuilder(
    column: $table.checkedInStoreCode,
    builder: (column) => column,
  );

  GeneratedColumn<int> get todayRoutePlanCount => $composableBuilder(
    column: $table.todayRoutePlanCount,
    builder: (column) => column,
  );

  GeneratedColumn<int> get uncompletedOrderCount => $composableBuilder(
    column: $table.uncompletedOrderCount,
    builder: (column) => column,
  );
}

class $MyProfileTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          MyProfile,
          MyProfileData,
          $MyProfileFilterComposer,
          $MyProfileOrderingComposer,
          $MyProfileAnnotationComposer,
          $MyProfileCreateCompanionBuilder,
          $MyProfileUpdateCompanionBuilder,
          (
            MyProfileData,
            BaseReferences<_$AppDatabase, MyProfile, MyProfileData>,
          ),
          MyProfileData,
          PrefetchHooks Function()
        > {
  $MyProfileTableManager(_$AppDatabase db, MyProfile table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $MyProfileFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $MyProfileOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $MyProfileAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> firstName = const Value.absent(),
                Value<String?> lastName = const Value.absent(),
                Value<String?> fullName = const Value.absent(),
                Value<String?> imageUrl = const Value.absent(),
                Value<Uint8List?> imageByte = const Value.absent(),
                Value<String?> phoneNumber = const Value.absent(),
                Value<String?> address = const Value.absent(),
                Value<int?> roleId = const Value.absent(),
                Value<String?> roleName = const Value.absent(),
                Value<String?> reportedToName = const Value.absent(),
                Value<String?> reportedToRole = const Value.absent(),
                Value<int?> checkedInRouteId = const Value.absent(),
                Value<int?> checkedInStoreId = const Value.absent(),
                Value<String?> checkedInDateTime = const Value.absent(),
                Value<String?> checkedInStoreName = const Value.absent(),
                Value<String?> checkedInStoreCode = const Value.absent(),
                Value<int?> todayRoutePlanCount = const Value.absent(),
                Value<int?> uncompletedOrderCount = const Value.absent(),
              }) => MyProfileCompanion(
                id: id,
                firstName: firstName,
                lastName: lastName,
                fullName: fullName,
                imageUrl: imageUrl,
                imageByte: imageByte,
                phoneNumber: phoneNumber,
                address: address,
                roleId: roleId,
                roleName: roleName,
                reportedToName: reportedToName,
                reportedToRole: reportedToRole,
                checkedInRouteId: checkedInRouteId,
                checkedInStoreId: checkedInStoreId,
                checkedInDateTime: checkedInDateTime,
                checkedInStoreName: checkedInStoreName,
                checkedInStoreCode: checkedInStoreCode,
                todayRoutePlanCount: todayRoutePlanCount,
                uncompletedOrderCount: uncompletedOrderCount,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> firstName = const Value.absent(),
                Value<String?> lastName = const Value.absent(),
                Value<String?> fullName = const Value.absent(),
                Value<String?> imageUrl = const Value.absent(),
                Value<Uint8List?> imageByte = const Value.absent(),
                Value<String?> phoneNumber = const Value.absent(),
                Value<String?> address = const Value.absent(),
                Value<int?> roleId = const Value.absent(),
                Value<String?> roleName = const Value.absent(),
                Value<String?> reportedToName = const Value.absent(),
                Value<String?> reportedToRole = const Value.absent(),
                Value<int?> checkedInRouteId = const Value.absent(),
                Value<int?> checkedInStoreId = const Value.absent(),
                Value<String?> checkedInDateTime = const Value.absent(),
                Value<String?> checkedInStoreName = const Value.absent(),
                Value<String?> checkedInStoreCode = const Value.absent(),
                Value<int?> todayRoutePlanCount = const Value.absent(),
                Value<int?> uncompletedOrderCount = const Value.absent(),
              }) => MyProfileCompanion.insert(
                id: id,
                firstName: firstName,
                lastName: lastName,
                fullName: fullName,
                imageUrl: imageUrl,
                imageByte: imageByte,
                phoneNumber: phoneNumber,
                address: address,
                roleId: roleId,
                roleName: roleName,
                reportedToName: reportedToName,
                reportedToRole: reportedToRole,
                checkedInRouteId: checkedInRouteId,
                checkedInStoreId: checkedInStoreId,
                checkedInDateTime: checkedInDateTime,
                checkedInStoreName: checkedInStoreName,
                checkedInStoreCode: checkedInStoreCode,
                todayRoutePlanCount: todayRoutePlanCount,
                uncompletedOrderCount: uncompletedOrderCount,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $MyProfileProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      MyProfile,
      MyProfileData,
      $MyProfileFilterComposer,
      $MyProfileOrderingComposer,
      $MyProfileAnnotationComposer,
      $MyProfileCreateCompanionBuilder,
      $MyProfileUpdateCompanionBuilder,
      (MyProfileData, BaseReferences<_$AppDatabase, MyProfile, MyProfileData>),
      MyProfileData,
      PrefetchHooks Function()
    >;
typedef $ProductsCreateCompanionBuilder =
    ProductsCompanion Function({
      Value<int> id,
      Value<String?> productName,
      Value<String?> productCode,
      Value<String?> productUnit,
      Value<String?> productImage,
      Value<double?> sellingPrice,
      Value<double?> sellingPriceBeforeDiscount,
      Value<int?> promotionId,
      Value<String?> promotionName,
      Value<String?> promotionDescription,
      Value<String?> promotionExpiryDate,
      Value<int?> storeId,
      Value<int?> availableQuantity,
    });
typedef $ProductsUpdateCompanionBuilder =
    ProductsCompanion Function({
      Value<int> id,
      Value<String?> productName,
      Value<String?> productCode,
      Value<String?> productUnit,
      Value<String?> productImage,
      Value<double?> sellingPrice,
      Value<double?> sellingPriceBeforeDiscount,
      Value<int?> promotionId,
      Value<String?> promotionName,
      Value<String?> promotionDescription,
      Value<String?> promotionExpiryDate,
      Value<int?> storeId,
      Value<int?> availableQuantity,
    });

class $ProductsFilterComposer extends Composer<_$AppDatabase, Products> {
  $ProductsFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get productName => $composableBuilder(
    column: $table.productName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get productCode => $composableBuilder(
    column: $table.productCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get productUnit => $composableBuilder(
    column: $table.productUnit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get productImage => $composableBuilder(
    column: $table.productImage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get sellingPrice => $composableBuilder(
    column: $table.sellingPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get sellingPriceBeforeDiscount => $composableBuilder(
    column: $table.sellingPriceBeforeDiscount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get promotionId => $composableBuilder(
    column: $table.promotionId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get promotionName => $composableBuilder(
    column: $table.promotionName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get promotionDescription => $composableBuilder(
    column: $table.promotionDescription,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get promotionExpiryDate => $composableBuilder(
    column: $table.promotionExpiryDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get storeId => $composableBuilder(
    column: $table.storeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get availableQuantity => $composableBuilder(
    column: $table.availableQuantity,
    builder: (column) => ColumnFilters(column),
  );
}

class $ProductsOrderingComposer extends Composer<_$AppDatabase, Products> {
  $ProductsOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get productName => $composableBuilder(
    column: $table.productName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get productCode => $composableBuilder(
    column: $table.productCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get productUnit => $composableBuilder(
    column: $table.productUnit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get productImage => $composableBuilder(
    column: $table.productImage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get sellingPrice => $composableBuilder(
    column: $table.sellingPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get sellingPriceBeforeDiscount => $composableBuilder(
    column: $table.sellingPriceBeforeDiscount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get promotionId => $composableBuilder(
    column: $table.promotionId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get promotionName => $composableBuilder(
    column: $table.promotionName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get promotionDescription => $composableBuilder(
    column: $table.promotionDescription,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get promotionExpiryDate => $composableBuilder(
    column: $table.promotionExpiryDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get storeId => $composableBuilder(
    column: $table.storeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get availableQuantity => $composableBuilder(
    column: $table.availableQuantity,
    builder: (column) => ColumnOrderings(column),
  );
}

class $ProductsAnnotationComposer extends Composer<_$AppDatabase, Products> {
  $ProductsAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get productName => $composableBuilder(
    column: $table.productName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get productCode => $composableBuilder(
    column: $table.productCode,
    builder: (column) => column,
  );

  GeneratedColumn<String> get productUnit => $composableBuilder(
    column: $table.productUnit,
    builder: (column) => column,
  );

  GeneratedColumn<String> get productImage => $composableBuilder(
    column: $table.productImage,
    builder: (column) => column,
  );

  GeneratedColumn<double> get sellingPrice => $composableBuilder(
    column: $table.sellingPrice,
    builder: (column) => column,
  );

  GeneratedColumn<double> get sellingPriceBeforeDiscount => $composableBuilder(
    column: $table.sellingPriceBeforeDiscount,
    builder: (column) => column,
  );

  GeneratedColumn<int> get promotionId => $composableBuilder(
    column: $table.promotionId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get promotionName => $composableBuilder(
    column: $table.promotionName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get promotionDescription => $composableBuilder(
    column: $table.promotionDescription,
    builder: (column) => column,
  );

  GeneratedColumn<String> get promotionExpiryDate => $composableBuilder(
    column: $table.promotionExpiryDate,
    builder: (column) => column,
  );

  GeneratedColumn<int> get storeId =>
      $composableBuilder(column: $table.storeId, builder: (column) => column);

  GeneratedColumn<int> get availableQuantity => $composableBuilder(
    column: $table.availableQuantity,
    builder: (column) => column,
  );
}

class $ProductsTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          Products,
          Product,
          $ProductsFilterComposer,
          $ProductsOrderingComposer,
          $ProductsAnnotationComposer,
          $ProductsCreateCompanionBuilder,
          $ProductsUpdateCompanionBuilder,
          (Product, BaseReferences<_$AppDatabase, Products, Product>),
          Product,
          PrefetchHooks Function()
        > {
  $ProductsTableManager(_$AppDatabase db, Products table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $ProductsFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $ProductsOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $ProductsAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> productName = const Value.absent(),
                Value<String?> productCode = const Value.absent(),
                Value<String?> productUnit = const Value.absent(),
                Value<String?> productImage = const Value.absent(),
                Value<double?> sellingPrice = const Value.absent(),
                Value<double?> sellingPriceBeforeDiscount =
                    const Value.absent(),
                Value<int?> promotionId = const Value.absent(),
                Value<String?> promotionName = const Value.absent(),
                Value<String?> promotionDescription = const Value.absent(),
                Value<String?> promotionExpiryDate = const Value.absent(),
                Value<int?> storeId = const Value.absent(),
                Value<int?> availableQuantity = const Value.absent(),
              }) => ProductsCompanion(
                id: id,
                productName: productName,
                productCode: productCode,
                productUnit: productUnit,
                productImage: productImage,
                sellingPrice: sellingPrice,
                sellingPriceBeforeDiscount: sellingPriceBeforeDiscount,
                promotionId: promotionId,
                promotionName: promotionName,
                promotionDescription: promotionDescription,
                promotionExpiryDate: promotionExpiryDate,
                storeId: storeId,
                availableQuantity: availableQuantity,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> productName = const Value.absent(),
                Value<String?> productCode = const Value.absent(),
                Value<String?> productUnit = const Value.absent(),
                Value<String?> productImage = const Value.absent(),
                Value<double?> sellingPrice = const Value.absent(),
                Value<double?> sellingPriceBeforeDiscount =
                    const Value.absent(),
                Value<int?> promotionId = const Value.absent(),
                Value<String?> promotionName = const Value.absent(),
                Value<String?> promotionDescription = const Value.absent(),
                Value<String?> promotionExpiryDate = const Value.absent(),
                Value<int?> storeId = const Value.absent(),
                Value<int?> availableQuantity = const Value.absent(),
              }) => ProductsCompanion.insert(
                id: id,
                productName: productName,
                productCode: productCode,
                productUnit: productUnit,
                productImage: productImage,
                sellingPrice: sellingPrice,
                sellingPriceBeforeDiscount: sellingPriceBeforeDiscount,
                promotionId: promotionId,
                promotionName: promotionName,
                promotionDescription: promotionDescription,
                promotionExpiryDate: promotionExpiryDate,
                storeId: storeId,
                availableQuantity: availableQuantity,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $ProductsProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      Products,
      Product,
      $ProductsFilterComposer,
      $ProductsOrderingComposer,
      $ProductsAnnotationComposer,
      $ProductsCreateCompanionBuilder,
      $ProductsUpdateCompanionBuilder,
      (Product, BaseReferences<_$AppDatabase, Products, Product>),
      Product,
      PrefetchHooks Function()
    >;
typedef $PromotionsCreateCompanionBuilder =
    PromotionsCompanion Function({
      Value<int> id,
      Value<String?> name,
      Value<String?> description,
      Value<String?> expiryDate,
      Value<int?> productId,
      Value<String?> productName,
      Value<String?> skuCode,
      Value<String?> productUnit,
      Value<double?> sellingPrice,
      Value<String?> image,
    });
typedef $PromotionsUpdateCompanionBuilder =
    PromotionsCompanion Function({
      Value<int> id,
      Value<String?> name,
      Value<String?> description,
      Value<String?> expiryDate,
      Value<int?> productId,
      Value<String?> productName,
      Value<String?> skuCode,
      Value<String?> productUnit,
      Value<double?> sellingPrice,
      Value<String?> image,
    });

class $PromotionsFilterComposer extends Composer<_$AppDatabase, Promotions> {
  $PromotionsFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get expiryDate => $composableBuilder(
    column: $table.expiryDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get productId => $composableBuilder(
    column: $table.productId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get productName => $composableBuilder(
    column: $table.productName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get skuCode => $composableBuilder(
    column: $table.skuCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get productUnit => $composableBuilder(
    column: $table.productUnit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get sellingPrice => $composableBuilder(
    column: $table.sellingPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get image => $composableBuilder(
    column: $table.image,
    builder: (column) => ColumnFilters(column),
  );
}

class $PromotionsOrderingComposer extends Composer<_$AppDatabase, Promotions> {
  $PromotionsOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get expiryDate => $composableBuilder(
    column: $table.expiryDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get productId => $composableBuilder(
    column: $table.productId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get productName => $composableBuilder(
    column: $table.productName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get skuCode => $composableBuilder(
    column: $table.skuCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get productUnit => $composableBuilder(
    column: $table.productUnit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get sellingPrice => $composableBuilder(
    column: $table.sellingPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get image => $composableBuilder(
    column: $table.image,
    builder: (column) => ColumnOrderings(column),
  );
}

class $PromotionsAnnotationComposer
    extends Composer<_$AppDatabase, Promotions> {
  $PromotionsAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get expiryDate => $composableBuilder(
    column: $table.expiryDate,
    builder: (column) => column,
  );

  GeneratedColumn<int> get productId =>
      $composableBuilder(column: $table.productId, builder: (column) => column);

  GeneratedColumn<String> get productName => $composableBuilder(
    column: $table.productName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get skuCode =>
      $composableBuilder(column: $table.skuCode, builder: (column) => column);

  GeneratedColumn<String> get productUnit => $composableBuilder(
    column: $table.productUnit,
    builder: (column) => column,
  );

  GeneratedColumn<double> get sellingPrice => $composableBuilder(
    column: $table.sellingPrice,
    builder: (column) => column,
  );

  GeneratedColumn<String> get image =>
      $composableBuilder(column: $table.image, builder: (column) => column);
}

class $PromotionsTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          Promotions,
          Promotion,
          $PromotionsFilterComposer,
          $PromotionsOrderingComposer,
          $PromotionsAnnotationComposer,
          $PromotionsCreateCompanionBuilder,
          $PromotionsUpdateCompanionBuilder,
          (Promotion, BaseReferences<_$AppDatabase, Promotions, Promotion>),
          Promotion,
          PrefetchHooks Function()
        > {
  $PromotionsTableManager(_$AppDatabase db, Promotions table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $PromotionsFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $PromotionsOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $PromotionsAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> name = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String?> expiryDate = const Value.absent(),
                Value<int?> productId = const Value.absent(),
                Value<String?> productName = const Value.absent(),
                Value<String?> skuCode = const Value.absent(),
                Value<String?> productUnit = const Value.absent(),
                Value<double?> sellingPrice = const Value.absent(),
                Value<String?> image = const Value.absent(),
              }) => PromotionsCompanion(
                id: id,
                name: name,
                description: description,
                expiryDate: expiryDate,
                productId: productId,
                productName: productName,
                skuCode: skuCode,
                productUnit: productUnit,
                sellingPrice: sellingPrice,
                image: image,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> name = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String?> expiryDate = const Value.absent(),
                Value<int?> productId = const Value.absent(),
                Value<String?> productName = const Value.absent(),
                Value<String?> skuCode = const Value.absent(),
                Value<String?> productUnit = const Value.absent(),
                Value<double?> sellingPrice = const Value.absent(),
                Value<String?> image = const Value.absent(),
              }) => PromotionsCompanion.insert(
                id: id,
                name: name,
                description: description,
                expiryDate: expiryDate,
                productId: productId,
                productName: productName,
                skuCode: skuCode,
                productUnit: productUnit,
                sellingPrice: sellingPrice,
                image: image,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $PromotionsProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      Promotions,
      Promotion,
      $PromotionsFilterComposer,
      $PromotionsOrderingComposer,
      $PromotionsAnnotationComposer,
      $PromotionsCreateCompanionBuilder,
      $PromotionsUpdateCompanionBuilder,
      (Promotion, BaseReferences<_$AppDatabase, Promotions, Promotion>),
      Promotion,
      PrefetchHooks Function()
    >;
typedef $StoresCreateCompanionBuilder =
    StoresCompanion Function({
      Value<int> id,
      Value<String?> storeCode,
      Value<String?> storeName,
    });
typedef $StoresUpdateCompanionBuilder =
    StoresCompanion Function({
      Value<int> id,
      Value<String?> storeCode,
      Value<String?> storeName,
    });

class $StoresFilterComposer extends Composer<_$AppDatabase, Stores> {
  $StoresFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get storeCode => $composableBuilder(
    column: $table.storeCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get storeName => $composableBuilder(
    column: $table.storeName,
    builder: (column) => ColumnFilters(column),
  );
}

class $StoresOrderingComposer extends Composer<_$AppDatabase, Stores> {
  $StoresOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get storeCode => $composableBuilder(
    column: $table.storeCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get storeName => $composableBuilder(
    column: $table.storeName,
    builder: (column) => ColumnOrderings(column),
  );
}

class $StoresAnnotationComposer extends Composer<_$AppDatabase, Stores> {
  $StoresAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get storeCode =>
      $composableBuilder(column: $table.storeCode, builder: (column) => column);

  GeneratedColumn<String> get storeName =>
      $composableBuilder(column: $table.storeName, builder: (column) => column);
}

class $StoresTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          Stores,
          Store,
          $StoresFilterComposer,
          $StoresOrderingComposer,
          $StoresAnnotationComposer,
          $StoresCreateCompanionBuilder,
          $StoresUpdateCompanionBuilder,
          (Store, BaseReferences<_$AppDatabase, Stores, Store>),
          Store,
          PrefetchHooks Function()
        > {
  $StoresTableManager(_$AppDatabase db, Stores table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $StoresFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $StoresOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $StoresAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> storeCode = const Value.absent(),
                Value<String?> storeName = const Value.absent(),
              }) => StoresCompanion(
                id: id,
                storeCode: storeCode,
                storeName: storeName,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> storeCode = const Value.absent(),
                Value<String?> storeName = const Value.absent(),
              }) => StoresCompanion.insert(
                id: id,
                storeCode: storeCode,
                storeName: storeName,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $StoresProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      Stores,
      Store,
      $StoresFilterComposer,
      $StoresOrderingComposer,
      $StoresAnnotationComposer,
      $StoresCreateCompanionBuilder,
      $StoresUpdateCompanionBuilder,
      (Store, BaseReferences<_$AppDatabase, Stores, Store>),
      Store,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $JsonSerializedObjectsTableManager get jsonSerializedObjects =>
      $JsonSerializedObjectsTableManager(_db, _db.jsonSerializedObjects);
  $MyProfileTableManager get myProfile =>
      $MyProfileTableManager(_db, _db.myProfile);
  $ProductsTableManager get products =>
      $ProductsTableManager(_db, _db.products);
  $PromotionsTableManager get promotions =>
      $PromotionsTableManager(_db, _db.promotions);
  $StoresTableManager get stores => $StoresTableManager(_db, _db.stores);
}
