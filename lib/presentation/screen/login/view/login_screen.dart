import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/base/base.dart';
import '../../../../domain/entities/user/user_session_request_entity.dart';
import '../../../../resources/localization.dart';
import '../../../../shared/dimens/dimens.dart';
import '../../../../shared/extension/context_extension.dart';
import '../../../../shared/utils/validator.dart';
import '../../../widget/error_dialog.dart';
import '../cubit/login_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends CubitState<LoginScreen, LoginCubit> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  late Validator emailValidator;
  late Validator passwordValidator;

  @override
  void initState() {
    super.initState();
    emailValidator = Validator<String>([
      (value) => value.isEmpty ? S.current.requiredField : null,
    ]);
    passwordValidator = Validator<String>([
      (value) => value.isEmpty ? S.current.requiredField : null,
    ]);
  }

  void doLogin(LoginState state) async {
    if (_formKey.currentState?.validate() ?? false) {
      final request = UserSessionRequestEntity(
        username: _emailController.text,
        password: _passwordController.text,
      );
      await cubit.getUserSession(request);
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginLoaded) context.pop();
        if (state is LoginError) {
          ErrorDialog.showErrorDialog(
            context: context,
            title: S.current.login_error,
            message: state.message,
            onClose: () {},
            onRetry: () => doLogin(state),
          );
        }
      },
      builder: (context, state) {
        return Stack(
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 2),
              child: Padding(
                padding: EdgeInsets.all(Dimens.d16.responsive()),
                child: Column(
                  children: [
                    Text(
                      S.current.login,
                      style: context.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                labelText: S.current.email,
                                prefixIcon: const Icon(Icons.email),
                              ),
                              validator: emailValidator.validate,
                            ),
                            Gap(Dimens.d24.responsive()),
                            TextFormField(
                              controller: _passwordController,
                              obscureText: state.isPasswordObscured,
                              decoration: InputDecoration(
                                labelText: S.current.password,
                                prefixIcon: const Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    state.isPasswordObscured
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                  onPressed: () =>
                                      cubit.togglePasswordVisibility(),
                                ),
                              ),
                              validator: passwordValidator.validate,
                            ),
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: context.theme.colorScheme.primary,
                        elevation: 0,
                        minimumSize: Size.fromHeight(Dimens.d48.responsive()),
                      ),
                      onPressed:
                          state is LoginLoading ? null : () => doLogin(state),
                      child: state is LoginLoading
                          ? SizedBox(
                              height: Dimens.d16.responsive(),
                              width: Dimens.d16.responsive(),
                              child: const CircularProgressIndicator(),
                            )
                          : Text(
                              S.current.login,
                              style: context.textTheme.titleMedium?.copyWith(
                                color: context.theme.colorScheme.onPrimary,
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
