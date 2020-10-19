class DataConvert {
  /// 强制把 value 转换成 String
  static String $toString(v) {
    return v?.toString() ?? "";
  }

  /// 强制转换 value 为 int
  static int $toInt(v) {
    try {
      if (v is int) {
        return v;
      } else {
        return double.parse(v.toString()).round();
      }
    } catch (e) {
      return null == v ? null : 0;
    }
  }

  /// 强制转换 value 为 double
  static double $toDouble(v) {
    try {
      if (v is double) {
        return v;
      } else {
        return double.parse(v.toString());
      }
    } catch (e) {
      return null == v ? null : 0;
    }
  }
}
