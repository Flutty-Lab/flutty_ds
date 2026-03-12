import 'package:flutter/material.dart';
import 'package:flutty_ds/dimens.dart';

class ErrorCard extends StatelessWidget {
  const ErrorCard({required this.errorMessage, super.key});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(Dimens.standardSpacing),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.error_outline, color: Colors.red),
              SizedBox(width: Dimens.standardSpacing),
              Flexible(
                child: Text(
                  errorMessage,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
