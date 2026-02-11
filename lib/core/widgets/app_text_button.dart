import 'package:flutter/material.dart';
import '../theming/app_styles.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.onPressed,
    this.buttonText,
    this.child,
    this.shadowColor,
    this.withGradient = true,
    this.backgroundColor,
    this.active = true,
    this.horizontalPadding,
    this.verticalPadding,
    this.borderRadius,
    this.withShadow,
  });
  final String? buttonText;
  final VoidCallback? onPressed;
  final Widget? child;
  final Color? shadowColor;
  final bool? withGradient;
  final bool? withShadow;
  final bool active;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 30),
      ),
      child: Material(
        color: Colors.transparent,
        child: Ink(
          decoration: BoxDecoration(
            color: backgroundColor ?? Colors.white,
            borderRadius: BorderRadius.circular(borderRadius ?? 30),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(borderRadius ?? 30),
            onTap: onPressed,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: verticalPadding ?? 14,
                horizontal: horizontalPadding ?? 24,
              ),
              child:
                  child ??
                  Text(
                    buttonText ?? 'Continue',
                    style: AppStyles.extraBold15.copyWith(
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: const Color(
                            0xff0B1324,
                          ).withAlpha((255 * 0.24).toInt()),
                          offset: const Offset(0, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
