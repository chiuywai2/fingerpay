class User {
  String fullName;
  String phoneNo;
  double accountBalance;

  User(this.fullName, this.phoneNo);

  Map<String, dynamic> toJson() => {
        'fullName': fullName,
        'phoneNo': phoneNo,
        'accountBalance': accountBalance,
      };
}
