import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/base/base.dart';
import '../../../../resources/localization.dart';
import '../../../../shared/dimens/dimens.dart';
import '../../../../shared/extension/extension.dart';
import '../../../../shared/utils/utils.dart';
import '../setting.dart';
import '../widget/host_edit_input.dart';
import '../widget/theme_color_widget.dart';
import '../widget/theme_mode_widget.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends CubitState<SettingPage, SettingCubit> {
  late final TextEditingController _hostController;
  late final Validator _hostValidator;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _hostController = TextEditingController(text: cubit.state.host ?? '');
    _hostValidator = Validator<String>([
      (value) => value.isEmpty ? S.current.requiredField : null,
      (value) => value.isValidHost() ? null : S.current.invalidHost,
    ]);
  }

  @override
  void dispose() {
    _hostController.dispose();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<SettingCubit, SettingState>(
      builder: (context, state) {
        return SingleChildScrollView(
          padding: EdgeInsets.all(Dimens.d16.responsive()),
          child: Column(
            children: [
              const ThemeModeWidget(),
              const Divider(),
              const ThemeColorWidget(),
              const Divider(),
              HostEditInput(
                formKey: _formKey,
                controller: _hostController,
                validator: _hostValidator,
              ),
            ],
          ),
        );
      },
    );
  }
}
