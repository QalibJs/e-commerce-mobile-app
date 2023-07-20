abstract class PasswordState {}

class PasswordInitial extends PasswordState {}

class PasswordVisible extends PasswordState {
  final bool passwordVisible;
  PasswordVisible({
    required this.passwordVisible,
  });
}
