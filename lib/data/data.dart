import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> transactionData = [
  {
    'icon': const FaIcon(FontAwesomeIcons.burger),
    'color': Colors.yellow[700],
    'name': 'Food',
    'totalAmount': '- ₱65.00',
    'date': 'Today'
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.cartShopping),
    'color': Colors.purple,
    'name': 'Grocery',
    'totalAmount': '- ₱65.00',
    'date': 'Today'
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.heart),
    'color': Colors.red,
    'name': 'Health',
    'totalAmount': '- ₱65.00',
    'date': 'Today'
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.car),
    'color': Colors.blue,
    'name': 'Travel',
    'totalAmount': '- ₱65.00',
    'date': 'Today'
  }
];
