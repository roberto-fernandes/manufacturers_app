library manufactures_details;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/features/common/presentation/utils/size_config.dart';
import 'package:untitled3/features/common/presentation/widgets/async_value_widget.dart';
import 'package:untitled3/features/common/presentation/widgets/default_error_message.dart';
import 'package:untitled3/features/common/presentation/widgets/empty_list_widget.dart';
import 'package:untitled3/features/common/presentation/widgets/retry_widget.dart';
import 'package:untitled3/features/manufacturer_details/domain/entities/manufacturer_model.dart';
import 'package:untitled3/features/manufacturer_details/presentation/provider/manufacturer_model_provider.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page_result.dart';

part 'manufacturer_details_screen.dart';
part 'widgets/model_list.dart';