# data_type_convert_util

数据类型转换工具类

能够自动根据json生成对应的bean，结合json_serializable生成对应的模版
自动生成的文件（部分）
```
import 'package:json_annotation/json_annotation.dart';
import 'package:data_type_convert_util/data_type_convert_util.dart';

part 'test_bean.g.dart';

@JsonSerializable()
class TestBean extends Object {
  @JsonKey(name: 'status', fromJson: DataConvert.$toInt, defaultValue: 1)
  int status;

  @JsonKey(name: 'code', fromJson: DataConvert.$toInt)
  int code;

  @JsonKey(name: 'msg', fromJson: DataConvert.$toString)
  String msg;

  @JsonKey(name: 'data')
  List<Data> data;

  TestBean(
    this.status,
    this.code,
    this.msg,
    this.data,
  );

  static TestBean fromJson(Map<String, dynamic> srcJson) =>
      _$TestBeanFromJson(srcJson);

  Map<String, dynamic> toJson() => _$TestBeanToJson(this);

  @override
  String toString() {
    return 'TestBean{status: $status, code: $code, msg: $msg, data: $data}';
  }
}
```

运行命令
```
flutter pub run build_runner watch --delete-conflicting-outputs
```
生成的文件(部分)
```
part of 'test_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestBean _$TestBeanFromJson(Map<String, dynamic> json) {
  return TestBean(
    DataConvert.$toInt(json['status']) ?? 1,
    DataConvert.$toInt(json['code']),
    DataConvert.$toString(json['msg']),
    (json['data'] as List)
        ?.map(
            (e) => e == null ? null : Data.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TestBeanToJson(TestBean instance) => <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'msg': instance.msg,
      'data': instance.data,
    };
```