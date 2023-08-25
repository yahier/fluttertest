import 'package:fluttertest/dart_grammer/async.dart';

import 'basic_data.dart';
import 'extends_test.dart';
import 'func.dart';

/// 基础语法测试文件
void main() {
  //testExtends();
  //testBasicData();
  //testFunc();
  testAsync();
}

///继承测试
void testExtends() {
  var people = Xiaoming();
  people.sleep();
  people.work();

  people.eat();
  people.drink();
}

///测试基础数据类型
void testBasicData() {
  BasicData basicData = BasicData();
  basicData.test1();
  basicData.test2();
  basicData.test3();
}

void testFunc(){
  Func func = Func();
  func.test();
}

void testAsync(){
  AsyncTest test = AsyncTest();
  test.main();
}
