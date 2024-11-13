import 'package:anivsub/app/theme/const/theme_colors.dart';
import 'package:anivsub/app/theme/cubit/theme_cubit.dart';
import 'package:anivsub/shared/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeColorWidget extends StatefulWidget {
  const ThemeColorWidget({super.key});

  @override
  State<ThemeColorWidget> createState() => _ThemeColorWidgetState();
}

class _ThemeColorWidgetState extends State<ThemeColorWidget>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(context.l10n.themeColor),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(context.l10n.themeColorMessage),
              const SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ToggleButtons(
                  isSelected: kThemeColors
                      .map(
                        (color) =>
                            color.value ==
                            context.read<ThemeCubit>().state.appSetting.color,
                      )
                      .toList(),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  onPressed: (index) {
                    context
                        .read<ThemeCubit>()
                        .changeThemeColor(kThemeColors[index]);
                  },
                  renderBorder: false,
                  children: kThemeColors.map((color) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          titleTextStyle: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
