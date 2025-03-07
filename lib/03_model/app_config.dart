class AppConfig {
  static const String demoVersion = "demo";
  static const String version = demoVersion;

  static DateTime endDemo = DateTime(2025, 03, 08);

  static Duration getDurationRemainderDemo() {
    DateTime syDateTime = DateTime.now();
    return endDemo.difference(syDateTime);
  }
}
