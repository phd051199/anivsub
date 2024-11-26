import 'package:anivsub/app/base/base.dart';
import 'package:anivsub/presentation/screen/setting/setting.dart';
import 'package:anivsub/presentation/screen/setting/widget/host_edit_input.dart';
import 'package:anivsub/presentation/screen/setting/widget/theme_color_widget.dart';
import 'package:anivsub/presentation/screen/setting/widget/theme_mode_widget.dart';
import 'package:anivsub/shared/dimens/dimens.dart';
import 'package:anivsub/shared/extension/extension.dart';
import 'package:anivsub/shared/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      (value) => value.isEmpty ? context.l10n.requiredField : null,
      (value) => value.isValidHost() ? null : context.l10n.invalidHost,
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
