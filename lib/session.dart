class Session {
  Session._privateConstructor();

  static final _instance = Session._privateConstructor();

  factory Session() {
    return _instance;
  }

  bool isMember = false; // 사용하려나?
  bool isLogined = false;
}
