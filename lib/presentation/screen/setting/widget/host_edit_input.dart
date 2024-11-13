import 'package:anivsub/presentation/screen/setting/setting.dart';
import 'package:anivsub/shared/extension/extension.dart';
import 'package:anivsub/shared/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context),
          const SizedBox(height: 8),
          _buildHostInput(context, state, colorScheme),
          if (state.isHostUpdated) ...[
            const SizedBox(height: 8),
            _buildSuccessMessage(context),
          ],
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(context.l10n.updateHost),
      titleTextStyle: context.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.bold,
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
            labelText: context.l10n.hostUrl,
            suffixIcon: const SizedBox(width: 40),
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
                width: 2,
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
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
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
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
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
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              context.l10n.updateHostMessage,
              style: TextStyle(
                color: Colors.green.shade700,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
