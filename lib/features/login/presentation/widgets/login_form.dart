import 'package:docdoc/core/widgets/app_text_button.dart';
import 'package:docdoc/core/widgets/app_text_form_field.dart';
import 'package:docdoc/features/login/presentation/widgets/already_have_account.dart';
import 'package:docdoc/features/login/presentation/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class LoginForm extends StatefulWidget {
  LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          controller: emailController,
          hintText: 'Email',
          onTapOutside: (_) {
            FocusScope.of(context).unfocus();
          },
        ),
        verticalSpacing(16),
        AppTextFormField(
          controller: passwordController,
          hintText: 'Password',
          isObscureText: isObscureText,
          onTapOutside: (_) {
            FocusScope.of(context).unfocus();
          },
          suffixIcon: GestureDetector(
              onTap: () {
                setState(
                  () {
                    isObscureText = !isObscureText;
                  },
                );
              },
              child: Icon(
                  isObscureText ? Icons.visibility : Icons.visibility_off)),
        ),
        verticalSpacing(24),
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: Text(
            'Forget password?',
            style: TextStyles.font13primaryRegular,
          ),
        ),
        verticalSpacing(40),
        AppTextButton(
          buttonText: 'Login',
          onPressed: () {},
        ),
        verticalSpacing(16),
        TermsAndConditions(),
        verticalSpacing(50), // Add extra space for the bottom text
        AlreadyHaveAccount(),
      ],
    );
  }
}
