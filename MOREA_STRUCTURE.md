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
│   │   └── app_color.dart
│   │   └── app_config.dart
│   │   └── app_style.dart
│   │   └── env.dart
|   |
│   ├── enums/
│   │   └── db_serialized_object_type_enum.dart
│   │   └── local_service.dart
│   │   └── user_role_enum.dart
|   |
│   ├── extensions/
│   │   └── date_time_range_extension.dart
│   │   └── errors_handler_model.dart
│   │   └── json_serialized_object_model.dart
│   │   └── listing_model.dart
│   │   └── user_model.dart
│   │   └── manager_model.dart
│   │   └── manager_saleman_model.dart
│   │   └── order_history_model.dart
│   │   └── ordering_model.dart
│   │   └── user_model.dart
|   |
│   ├── models/  ///to get data
│   │   └── user_model.dart
│   │   └── errors_handler_model.dart
│   │   └── json_serialized_object_model.dart
│   │   └── listing_model.dart
│   │   └── user_model.dart
│   │   └── manager_model.dart
│   │   └── manager_saleman_model.dart
│   │   └── order_history_model.dart
│   │   └── ordering_model.dart
│   │   └── user_model.dart
│   │
│   ├── services/
│   │   └── api_service.dart
│   │
│   └── utils/
│       └── constants.dart
│
├── features/
│   └── auth/
│       ├── provider/
│       │   └── auth_provider.dart
│       │
│       ├── screens/
│       │   └── login_screen.dart
│       │
│       └── widgets/
│           └── login_form.dart
│
└── shared/
    ├── widgets/
    │   └── app_button.dart
    │
    └── providers/
        └── theme_provider.dartlib/
```

// db_serialized_object_type_enum.dart  
![image](/image/README/db.png)

// Local_service
![image](/image/README/local_service.png)

// user_role_enum.dart
![image](/image/README/enum_role.png)

// extension view
![DateTimeRange](/morea_stucture/extension/date_time_range_extension.dart)
![DateTime](/morea_stucture/extension/date_time_extension.dart)
![Duration](/morea_stucture/extension/duration_extension.dart)
![Local](/morea_stucture/extension/local_extension.dart)
![Response](/morea_stucture/extension/response_extension.dart)
![StoreStatus](/morea_stucture/extension/store_status_exension.dart)
![String](/morea_stucture/extension/string_extension.dart)