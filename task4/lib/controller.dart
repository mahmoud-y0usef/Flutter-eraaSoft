
class BankAccount {
  String cardNumber;
  String name;
  double balance;

  BankAccount(this.cardNumber, this.name, this.balance);

  void deposit(double amount) {
    balance += amount;
    print('Done, $name, your balance is: $balance');
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print('Done, $name, your balance is: $balance');
    } else {
      print('Withdrawal not allowed! Insufficient balance.');
    }
  }

  void checkBalance() {
    print('$name, your balance is: $balance');
  }

  void transferMoney(BankAccount recipient, double amount) {
    if (balance >= amount) {
      withdraw(amount);
      recipient.deposit(amount);
      print('Transfer successful! Your new balance is: $balance');
    } else {
      print('Transfer failed! Insufficient balance.');
    }
  }
}


class NormalAccount extends BankAccount {
  NormalAccount(super.cardNumber, super.name, super.balance);
}


class SavingsAccount extends BankAccount {
  double interestRate;

  SavingsAccount(super.cardNumber, super.name, super.balance, this.interestRate);

  void addInterest() {
    double interest = balance * (interestRate / 100);
    balance += interest;
    print('$name received an interest of $interest. New balance: $balance');
  }
}
