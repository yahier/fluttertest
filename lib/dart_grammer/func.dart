class Func {
  void test() {
    //方法作为入参
    test1(_test2());

    //命名入参
    test3(hasMoney: true);

    //入参默认值
    test4();
  }

  void test1(bool isMember) {
    print("是会员吗:" + isMember.toString());
  }

  bool _test2() {
    return false;
  }

  bool test3({required bool? hasMoney}) {
    return false;
  }

  void test4({bool? hasMoney = false}) {
    print("hasMoney:" + hasMoney.toString());
  }

  ///多类型返回 其实是Record 需要3.0.0以上版本
  // (String, int) test5() {
  //   return ('something', 42);
  // }
}
