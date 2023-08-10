import 'package:booklink_visual/api/model/user_payload.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/user_cubit.dart';
import 'business_create_page.dart';
import 'business_info_page.dart';

class BusinessScreen extends StatefulWidget {
  const BusinessScreen({
    super.key,
  });

  @override
  State<BusinessScreen> createState() => _BusinessScreenState();
}

class _BusinessScreenState extends State<BusinessScreen> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserPayload?>(builder: (context, state) {
      if (state == null || state.business == null || state.business?.subdomain == null) {
        return const BusinessCreatePage();
      }

      return const BusinessInfoPage();
    });
  }
}
