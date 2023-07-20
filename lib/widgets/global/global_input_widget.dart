import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants/app_padding.dart';
import '../../constants/input_style_widget.dart';
import '../../cubit/password/password_cubit.dart';
import '../../cubit/password/password_state.dart';

class GlobalInputWidget extends StatefulWidget {
  final String hintText;
  final bool? isPassword;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final int? minLines;
  final int? maxLength;
  final TextInputType? inputType;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final bool? isHome;
  const GlobalInputWidget({
    Key? key,
    required this.hintText,
    this.isPassword,
    this.prefixIcon,
    this.controller,
    this.minLines,
    this.maxLength,
    this.inputType,
    this.validator,
    this.inputFormatters,
    this.isHome, 
  }) : super(key: key);

  @override
  State<GlobalInputWidget> createState() => _GlobalInputWidgetState();
}

class _GlobalInputWidgetState extends State<GlobalInputWidget> {
  @override
  Widget build(BuildContext context) {
    PasswordCubit passwordCubit = context.read<PasswordCubit>();
    return Container(
      margin: widget.isHome!
          ? AppPadding.lr1().copyWith(
              left: 0,
              right: 0,
              top: 12,
            )
          : AppPadding.lrt24().copyWith(
              top: 12,
            ),
      child: TextFormField(
        inputFormatters: widget.inputFormatters,
        keyboardType: widget.inputType,
        validator: (value) => widget.validator!(value),
        minLines: widget.minLines,
        maxLength: widget.maxLength,
        controller: widget.controller,
        obscureText: passwordCubit.passwordVisible
            ? widget.isPassword == false
            : widget.isPassword == true,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          suffix: widget.isPassword!
              ? BlocBuilder<PasswordCubit, PasswordState>(
                  builder: (context, state) {
                    return GestureDetector(
                      onTap: () {
                        passwordCubit.securedPassword();
                        setState(() {});
                      },
                      child: passwordCubit.passwordVisible
                          ? const Icon(
                              Icons.visibility,
                              size: 20,
                            )
                          : const Icon(
                              Icons.visibility_off,
                              size: 20,
                            ),
                    );
                  },
                )
              : null,
          hintText: widget.hintText,
          border: InputStyleWidget.inputBorder,
          focusedBorder: InputStyleWidget.inputBorder,
        ),
      ),
    );
  }
}
