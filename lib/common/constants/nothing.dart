class Nothing {
  static final Nothing _instance = Nothing._internal();

  factory Nothing() {
    return _instance;
  }

  Nothing._internal();
}
