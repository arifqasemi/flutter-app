import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();
final formater = DateFormat.yMd();

enum Category { food, travel, entertainment, other }

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4(); // uuid.v4() is assigned here

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get farmateDate{
    return formater.format(date);
  }
}
