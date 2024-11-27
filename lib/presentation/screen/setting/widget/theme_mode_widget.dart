import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/theme/cubit/theme_cubit.dart';
import '../../../../resources/localization.dart';
import '../../../../shared/dimens/dimens.dart';
import '../../../../shared/extension/context_extension.dart';

class ThemeModeWidget extends StatelessWidget {
  const ThemeModeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(S.current.theme),
      subtitle: Text(S.current.themeMessage),
      titleTextStyle: context.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.bold,
      ),
      trailing: ToggleButtons(
        isSelected: ThemeMode.values
            .map(
              (mode) =>
                  mode ==
                  context.read<ThemeCubit>().state.appSetting.themeModeEnum,
            )
            .toList(),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        onPressed: (index) {
          context.read<ThemeCubit>().changeThemeMode(ThemeMode.values[index]);
        },
        textStyle:
            context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
        children: [
          Padding(
            padding: EdgeInsets.all(Dimens.d8.responsive()),
            child: const Icon(Icons.contrast),
          ),
          Padding(
            padding: EdgeInsets.all(Dimens.d8.responsive()),
            child: const Icon(Icons.light_mode_outlined),
          ),
          Padding(
            padding: EdgeInsets.all(Dimens.d8.responsive()),
            child: const Icon(Icons.dark_mode_outlined),
          ),
        ],
      ),
    );
  }
}
