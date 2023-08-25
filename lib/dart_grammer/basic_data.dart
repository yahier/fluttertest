import 'package:fluttertest/dart_grammer/boll.dart';

///基础数据类型

String? age = "100";

///延迟赋值
late String color;

//作为对比，以下语法错误
//String mode;

class BasicData {
  //空安全，延迟赋值，动态类型
  void test1() {
    String? name; // "张三";
    //设置为空时的默认值
    String nick = name ?? "默认值";
    print("nick:" + nick);

    //断言非空
    print("age:" + (age!.length).toString());

    color = "红色";
    print("color:" + color);

    //num类型
    num number = 1;
    num number2 = 1.1;

    //动态类型
    dynamic dyData;
    dyData = "九阴";
    //一旦赋值，即不可更改，编译正常，运行错误
    //dyData = 1;
    //dyData = false;
    print("dyData:" + dyData);
  }

  //列表，map
  void test2() {
    //列表 数组
    final list = <int>[];
    list.add(1);

    const iterable = ['Salad', 'Popcorn', 'Toast'];
    for (final element in iterable) {
      print(element);
    }

    //map
    var map = <String, String>{};
  }

  //列表的流操作
  void test3() {
    var list = <Boll>[];
    list.add(Boll(1, "吕"));
    list.add(Boll(8, "白"));

    final newList = list.where((c) => c.num >= 5).toList();
    //生成了新的满足条件的列表
    print("列表长度:" + newList.length.toString());

    //orElse语法错误，why
    //Boll boll = list.singleWhere((element) => element.num == 0, orElse: Boll(10, "红"));
    //boll.num;
  }
}
