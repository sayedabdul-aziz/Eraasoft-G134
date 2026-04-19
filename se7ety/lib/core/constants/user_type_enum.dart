enum UserTypeEnum {
  patient('patient'),
  doctor('doctor');

  final String value;
  const UserTypeEnum(this.value);

  // STRING TO ENUM
  static UserTypeEnum fromString(String value) {
    switch (value) {
      case 'patient':
        return UserTypeEnum.patient;
      case 'doctor':
        return UserTypeEnum.doctor;
      default:
        return UserTypeEnum.patient;
    }
  }
}
