import 'bank_account.dart';

void main() {
  BankAccount account1 = BankAccount();
  BankAccount account2 = BankAccount();
  account1.deposit(20000);
  account2.deposit(10000);
  account1.transfer(account2, 5000);
}
