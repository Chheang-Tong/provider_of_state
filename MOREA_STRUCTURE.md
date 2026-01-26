=== MVVM ===

```text
lib/
│
├── main.dart
│
├── app/
│   ├── app.dart
│   └── app_providers.dart
│
├── core/
│   └── constants/
│   │   ├── app_color.dart
│   │   ├── app_config.dart
│   │   ├── app_style.dart
│   │   └── env.dart
|   |
│   ├── enums/
│   │   ├── db_serialized_object_type_enum.dart
│   │   ├── local_service.dart
│   │   └── user_role_enum.dart
|   |
│   ├── extensions/
│   │   ├── date_time_range_extension.dart
│   │   ├── date_time_extension.dart
│   │   ├── duration_extension.dart
│   │   ├── locale_extension.dart
│   │   ├── response_extension.dart
│   │   ├── store_status_extension.dart
│   │   └── string_extension.dart
|   |
│   ├── models/  ///to get data
│   │   ├── user_model.dart
│   │   ├── errors_handler_model.dart
│   │   ├── json_serialized_object_model.dart
│   │   ├── listing_model.dart
│   │   ├── user_model.dart
│   │   ├── manager_model.dart
│   │   ├── manager_saleman_model.dart
│   │   ├── order_history_model.dart
│   │   ├── ordering_model.dart
│   │   └── user_model.dart
|   |
│   ├── repositories/
│   │   ├── local_database/
│   │   │       ├── database.dart
│   │   │       └── database.g.dart
│   │   └── tables.drift
│   │
│   ├── services/
│   │   ├── api_provider_service.dart
|   |   ├── global_service.dart
|   |   ├── local_service.dart
|   |   └── notification_service.dart
│   │
│   └── types/
|   |   ├── exception_with_title_message.dart
│   |   └── http_validation_exception.dart
|   |
│   └── view_model/
|       ├── subclass || child class
│       │       └── view_model.dart
|       |
│       └── superclass || parent clase
│               └── base_view_model.dart
│
└── ui/
    ├── views/
    │   └── view.dart
    └── widgets/
        └── widget.dart

```

// db_serialized_object_type_enum.dart  
![image](/image/README/db.png)

// Local_service
![image](/image/README/local_service.png)

// user_role_enum.dart
![image](/image/README/enum_role.png)

================================= Extension View ======================================
- [DateTimeRange](/morea_stucture/extension/date_time_range_extension.dart)
- [DateTime](/morea_stucture/extension/date_time_extension.dart)
- [Duration](/morea_stucture/extension/duration_extension.dart)
- [Locale](/morea_stucture/extension/locale_extension.dart)
- [Response](/morea_stucture/extension/response_extension.dart)
- [StoreStatus](/morea_stucture/extension/store_status_exension.dart)
- [String](/morea_stucture/extension/string_extension.dart)

================================= Model ======================================
- [Error Handler Model](/morea_stucture/model/error_handler_model.dart)
- [JSON Serialized Object Model](/morea_stucture/model/json_serialized_object_model.dart)
- [User Model](/morea_stucture/model/user_model.dart) auth model is in user_model

================================= Repositories ======================================
- [Local Database](/morea_stucture/repository/local_database/database.dart)
- [Drift](/morea_stucture/repository/table.drift)

================================= Service ======================================
- [Api Provider Service](/morea_stucture/service/api_provider_service.dart)
- [Global Service](/morea_stucture/service/global_service.dart)
- [Local Service](/morea_stucture/service/local_service.dart)
- [Notification Service](/morea_stucture/service/notification_service.dart)

================================= Type ======================================
