# Manufacturers

## User stories

- As a User, I can fetch manufacturers' list
- As a User, I can fetch manufacturers' models
- There is data storage so data can be displayed without an internet connection

## Recording

![](app_demo.gif)

## Architecture

The application uses a feature-driven directory structure. This enables to scale the project by having self-contained features. Furthermore, it facilitates improved task segregation as developers can address diverse features.

## Packages Used
  #### Icons
  - cupertino_icons
  
  #### Navigation
  - auto_route

  #### code generator
  - freezed
  - freezed_annotation
  - json_annotation

  #### Utils
  - equatable
  - path_provider

  #### Network
  - dio

  #### Storage
  - isar
  - isar_flutter_libs

  #### State management
  - flutter_riverpod

  #### Tests
  - mockito
