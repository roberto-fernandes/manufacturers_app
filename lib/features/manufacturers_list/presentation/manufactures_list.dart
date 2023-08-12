library manufactures_list;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/core/navigation/app_navigation.dart';
import 'package:untitled3/features/common/presentation/utils/size_config.dart';
import 'package:untitled3/features/common/presentation/widgets/async_value_widget.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page_result.dart';
import 'package:untitled3/features/manufacturers_list/presentation/providers/manufacturers_list_provider.dart';
import 'package:untitled3/features/manufacturers_list/presentation/providers/manufacturers_page_provider.dart';

part 'manufactures_list_screen.dart';
part 'widgets/manufacturer_item.dart';