import 'package:flutter/material.dart';
import 'package:flutter_localization_and_accessibility/common.dart';

class CostWidget extends StatelessWidget {
  const CostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: MergeSemantics(
        child: Column(
          children: [
            Text(
              AppLocalizations.of(context)!.costTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              softWrap: true,
              overflow: TextOverflow.fade,
              textAlign: TextAlign.center,
              semanticsLabel: AppLocalizations.of(context)!.costTitle,
            ),
            const SizedBox(height: 10),
            Text(
              AppLocalizations.of(context)!.costSubtitle,
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
              overflow: TextOverflow.fade,
              textAlign: TextAlign.center,
              semanticsLabel: AppLocalizations.of(context)!.costSubtitle,
            ),
          ],
        ),
      ),
    );
  }
}
