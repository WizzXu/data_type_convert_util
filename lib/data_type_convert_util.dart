
class DataConvert {
  /// 强制把 value 转换成 String
  static String $toString(v) {
    return v ?? "";
  }

  /// 强制转换 value 为 int
  static int $toInt(v) {
    try {
      return int.parse(v);
    } catch (e) {
      return 0;
    }
  }

  /// 强制转换 value 为 double
  static double $toDouble(v) {
    try {
      return double.parse(v);
    } catch (e) {
      return 0;
    }
  }
}
