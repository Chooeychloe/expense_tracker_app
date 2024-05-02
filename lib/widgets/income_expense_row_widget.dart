import 'package:flutter/material.dart';

class IncomeExpenseRowWidget extends StatelessWidget {
  final String label;
  final String amount;
  final double labelFontSize;
  final double amountFontSize;
  final FontWeight amountFontWeight;
  final FontWeight labelFontWeight;
  final IconData icon;
  final Color iconColor;
  const IncomeExpenseRowWidget({
    Key? key,
    required this.label,
    required this.amount,
    required this.labelFontSize,
    required this.amountFontSize,
    required this.amountFontWeight,
    required this.labelFontWeight,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: const BoxDecoration(
            color: Colors.white30,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              icon,
              color: iconColor,
              size: 12,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                  fontSize: labelFontSize,
                  color: Colors.white,
                  fontWeight: labelFontWeight),
            ),
            Text(
              amount,
              style: TextStyle(
                  fontSize: amountFontSize,
                  color: Colors.white,
                  fontWeight: amountFontWeight),
            ),
          ],
        )
      ],
    );
  }
}
