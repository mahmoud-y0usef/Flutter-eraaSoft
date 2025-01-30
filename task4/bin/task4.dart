
import 'dart:io';
import 'package:task4/controller.dart';
void main() {

  NormalAccount account1 = NormalAccount('12345', 'Sayed', 2000);
  SavingsAccount account2 = SavingsAccount('67890', 'Ahmed', 1000, 5); 

  print('Hello, ${account1.name}');
  String choice = 'yes';

  do {
    print('\nYour balance is: ${account1.balance}');
    print('Choose the operation:');
    print('1) Deposit');
    print('2) Withdraw');
    print('3) Check Balance');
    print('4) Transfer');
    print('5) Add Interest (Only for Savings Account)');
    print('Enter your choice:');

    String? input = stdin.readLineSync();
    if (input == null) continue;
    int operation = int.tryParse(input) ?? 0;

    switch (operation) {
      case 1:
        print('******* Deposit Operation *******');
        print('Enter the amount:');
        double? amount = double.tryParse(stdin.readLineSync() ?? '');
        if (amount != null) account1.deposit(amount);
        break;

      case 2:
        print('******* Withdraw Operation *******');
        print('Enter the amount:');
        double? amount = double.tryParse(stdin.readLineSync() ?? '');
        if (amount != null) account1.withdraw(amount);
        break;

      case 3:
        print('******* Check Balance Operation *******');
        account1.checkBalance();
        break;

      case 4:
        print('******* Transfer Operation *******');
        print('Enter Account name:');
        String? recipientName = stdin.readLineSync();
        if (recipientName != null && recipientName == account2.name) {
          print('Enter the amount:');
          double? amount = double.tryParse(stdin.readLineSync() ?? '');
          if (amount != null) account1.transferMoney(account2, amount);
        } else {
          print('Recipient account not found.');
        }
        break;

      case 5:
        print('******* Add Interest Operation *******');
        account2.addInterest();
              break;

      default:
        print('Invalid choice! Please enter a valid operation.');
    }

    print('Another operation (Yes/No)?');
    choice = stdin.readLineSync()?.toLowerCase() ?? 'no';

  } while (choice == 'yes');

  print('Thank you for using our banking system!');
}
