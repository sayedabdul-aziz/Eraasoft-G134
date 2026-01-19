class BankAccount {
  double _balance = 0.0;
  String? _accountNumber;

  deposit(double amount) {
    // check if amount is valid
    if (amount <= 60000) {
      _balance += amount;
      print("Deposited: ${amount}");
      checkBalance();
    } else {
      print("Deposit limit exceeded. Maximum deposit is 60000.");
    }
  }

  checkBalance() {
    print("Current balance: ${_balance}");
  }

  transfer(BankAccount other, double amount) {
    // check if sufficient balance
    if (_balance >= amount) {
      _balance -= amount;
      other._balance += amount;
      print("Transferred: ${amount} to account ${other.accountNumber}");
      checkBalance();
    } else {
      print("Insufficient balance for transfer.");
    }
  }

  set accountNumber(String accountNumber) =>
      this._accountNumber = accountNumber;

  String? get accountNumber => _accountNumber;
}
