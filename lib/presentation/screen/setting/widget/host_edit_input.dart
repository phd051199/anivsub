import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../resources/localization.dart';
import '../../../../shared/dimens/dimens.dart';
import '../../../../shared/extension/extension.dart';
import '../../../../shared/utils/utils.dart';
import '../setting.dart';

class HostEditInput extends StatelessWidget {
  const HostEditInput({
    super.key,
    required this.controller,
    required this.validator,
    required this.formKey,
  });

  final TextEditingController controller;
  final Validator validator;
  final GlobalKey<FormState> formKey;

  void _handleHostChange(String value, BuildContext context) {
    if (formKey.currentState?.validate() ?? false) {
      context.read<SettingCubit>().changeHost(value);
    }
  }

  void _handleEditToggle(SettingState state, BuildContext context) {
    if (state.isEditingHost) {
      _handleHostChange(controller.text, context);
    } else {
      context.read<SettingCubit>().toggleEditHost();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SettingCubit>().state;
    final colorScheme = context.theme.colorScheme;

    if (!state.isEditingHost) {
      controller.text = state.host ?? '';
    }

    return Form(
      key: formKey,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(S.current.updateHost),
        titleTextStyle: context.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(Dimens.d8.responsive()),
            _buildHostInput(context, state, colorScheme),
            if (state.isHostUpdated) ...[
              Gap(Dimens.d8.responsive()),
              _buildSuccessMessage(context),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildHostInput(
    BuildContext context,
    SettingState state,
    ColorScheme colorScheme,
  ) {
    return Stack(
      children: [
        TextFormField(
          validator: validator.validate,
          decoration: InputDecoration(
            suffixIcon: SizedBox(width: Dimens.d40.responsive()),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: colorScheme.outline),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: colorScheme.primary,
                width: Dimens.d2.responsive(),
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: colorScheme.error),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: colorScheme.error),
            ),
          ),
          enabled: state.isEditingHost,
          onTapOutside: (_) => context.focusScope.unfocus(),
          controller: controller,
          onFieldSubmitted: (value) {
            if (state.isEditingHost) {
              _handleHostChange(value, context);
            }
          },
        ),
        Positioned(
          right: 0,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(24),
              onTap: () => _handleEditToggle(state, context),
              child: Container(
                margin: EdgeInsets.all(Dimens.d8.responsive()),
                padding: EdgeInsets.all(Dimens.d8.responsive()),
                child: Icon(
                  state.isEditingHost ? Icons.save_rounded : Icons.edit_rounded,
                  color: colorScheme.primary,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSuccessMessage(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.d12.responsive(),
        vertical: Dimens.d8.responsive(),
      ),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.check_circle_outline,
            color: Colors.green,
            size: 20,
          ),
          Gap(Dimens.d8.responsive()),
          Expanded(
            child: Text(
              S.current.updateHostMessage,
              style: TextStyle(
                color: Colors.green.shade700,
                fontSize: kDefaultFontSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
