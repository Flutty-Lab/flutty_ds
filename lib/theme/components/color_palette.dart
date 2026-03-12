import 'package:flutter/material.dart';
import 'package:flutty_ds/dimens.dart';
import 'package:flutty_ds/theme_extension.dart';

class ColorPalette extends StatelessWidget {
  const ColorPalette({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTheme = Theme.of(context);
    final colorScheme = context.colorScheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(Dimens.standardSpacing)),
        color: colorScheme.onSurface,
      ),
      child: Padding(
        padding: EdgeInsets.all(Dimens.standardSpacing),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(Dimens.standardSpacing),
            ),
            color: colorScheme.surface,
          ),
          child: Padding(
            padding: EdgeInsets.all(Dimens.halfSpacing),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicHeight(
                  child: Row(
                    children: [
                      _OnColorPalette(
                        selectedTheme: selectedTheme,
                        colorName: 'Primary',
                        color: colorScheme.primary,
                        textColor: colorScheme.onPrimary,
                      ),
                      _OnColorPalette(
                        selectedTheme: selectedTheme,
                        colorName: 'Primary Container',
                        color: colorScheme.primaryContainer,
                        textColor: colorScheme.onPrimaryContainer,
                      ),
                    ],
                  ),
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      _OnColorPalette(
                        selectedTheme: selectedTheme,
                        colorName: 'Secondary',
                        color: colorScheme.secondary,
                        textColor: colorScheme.onSecondary,
                      ),
                      _OnColorPalette(
                        selectedTheme: selectedTheme,
                        colorName: 'Secondary Container',
                        color: colorScheme.secondaryContainer,
                        textColor: colorScheme.onSecondaryContainer,
                      ),
                    ],
                  ),
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      _OnColorPalette(
                        selectedTheme: selectedTheme,
                        colorName: 'Tertiary',
                        color: colorScheme.tertiary,
                        textColor: colorScheme.onTertiary,
                      ),
                      _OnColorPalette(
                        selectedTheme: selectedTheme,
                        colorName: 'Tertiary Container',
                        color: colorScheme.tertiaryContainer,
                        textColor: colorScheme.onTertiaryContainer,
                      ),
                    ],
                  ),
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      _OnColorPalette(
                        selectedTheme: selectedTheme,
                        colorName: 'Error',
                        color: colorScheme.error,
                        textColor: colorScheme.onError,
                      ),
                      _OnColorPalette(
                        selectedTheme: selectedTheme,
                        colorName: 'Error Container',
                        color: colorScheme.errorContainer,
                        textColor: colorScheme.onErrorContainer,
                      ),
                    ],
                  ),
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      _OnColorPalette(
                        selectedTheme: selectedTheme,
                        colorName: 'Surface',
                        color: colorScheme.surface,
                        textColor: colorScheme.onSurface,
                      ),
                    ],
                  ),
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      _OnColorPalette(
                        selectedTheme: selectedTheme,
                        colorName: 'Container',
                        color: colorScheme.surfaceContainer,
                        textColor: colorScheme.onSurface,
                      ),
                      _OnColorPalette(
                        selectedTheme: selectedTheme,
                        colorName: 'Bright',
                        color: colorScheme.surfaceBright,
                        textColor: colorScheme.onSurface,
                      ),
                      _OnColorPalette(
                        selectedTheme: selectedTheme,
                        colorName: 'High',
                        color: colorScheme.surfaceContainerHigh,
                        textColor: colorScheme.onSurface,
                      ),
                      _OnColorPalette(
                        selectedTheme: selectedTheme,
                        colorName: 'Highest',
                        color: colorScheme.surfaceContainerHighest,
                        textColor: colorScheme.onSurface,
                      ),
                    ],
                  ),
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      _OnColorPalette(
                        selectedTheme: selectedTheme,
                        colorName: 'Low',
                        color: colorScheme.surfaceContainerLow,
                        textColor: colorScheme.onSurface,
                      ),
                      _OnColorPalette(
                        selectedTheme: selectedTheme,
                        colorName: 'Lowest',
                        color: colorScheme.surfaceContainerLowest,
                        textColor: colorScheme.onSurface,
                      ),
                      _OnColorPalette(
                        selectedTheme: selectedTheme,
                        colorName: 'Dim',
                        color: colorScheme.surfaceDim,
                        textColor: colorScheme.onSurface,
                      ),
                      _OnColorPalette(
                        selectedTheme: selectedTheme,
                        colorName: 'Tint',
                        color: colorScheme.surfaceTint,
                        textColor: colorScheme.surface,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _OnColorPalette extends StatelessWidget {
  const _OnColorPalette({
    required this.selectedTheme,
    required this.colorName,
    required this.color,
    required this.textColor,
  });

  final ThemeData selectedTheme;
  final String colorName;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(Dimens.halfSpacing),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(Dimens.standardSpacing),
            ),
            border: Border.all(color: textColor),
            color: color,
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(Dimens.standardSpacing),
              child: Text(
                textAlign: TextAlign.center,
                colorName,
                style: context.textTheme.labelSmall!.copyWith(color: textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
