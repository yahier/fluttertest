mixin Bee on Worker {
  void work() {
    print("蜜蜂在工作");
  }
}

class Fish {}

class Animal {
  void sleep() {
    print("动物在地上睡觉");
  }
}

class Worker extends Animal {
  void work() {
    print("劳动者在劳动");
  }
}

//第一种多继承,with 一个新的任意类
class Xiaoming extends Worker with Fish {
  @override
  void sleep() {
    print("人在床上睡觉");
  }
}

//受限制的多继承， with后接一个Worker的mixin对象
class Lisi extends Worker with Bee {
  void sleep() {
    print("人在床上睡觉");
  }
}

///给Xiaoming 类建立扩展方法
extension Bingo on Xiaoming {
  void eat() {
    print("小明在吃饭");
  }
// ···
}

///在不同的入口，继续给Xiaoming 类建立扩展方法
extension Bingo1 on Xiaoming {
  void drink() {
    print("小明在喝水");
  }
// ···
}
