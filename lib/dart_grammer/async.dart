import 'dart:io';

///参考:https://dart.cn/codelabs/async-await
//Key terms:
//async: You can use the async keyword before a function’s body to mark it as asynchronous.
//async function: An async function is a function labeled with the async keyword.
//await: You can use the await keyword to get the completed result of an asynchronous expression. The await keyword only works within an async function.

class AsyncTest {
  ///返回值需要封装成泛型 如Future<void>, Future<String>
  ///async 修饰调用方法体
  ///await 修饰调用方法返回值时,必须在async方法中

  final oneSecond = Duration(seconds: 1);

  ///耗时方法
  Future<String> getDelayedString() => Future.delayed(
        const Duration(seconds: 2),
        () => 'gogogo',
      );

  ///耗时方法
  Future<void> printWithDelay(String message) {
    ///todo 此处a意义何在?
    return Future.delayed(oneSecond).then((a) {
      print(message);
    });
  }

  ///模拟网络请求
  Future<String> getNetworkData() {
    Future.value("哈哈哈").then((value) {
      print(value);
    });

    return Future<String>(() {
      sleep(const Duration(seconds: 2));
      return "network data";
    });
  }

  Future<String> createOrderMessage() async {
    var value = await getDelayedString();
    return 'return value: $value';
  }

  void executed1() async {
    print("executed1:进入了");
    var value = await getDelayedString();
    print("executed1:执行了 value:" + value);
  }

  void invokeGetNetworkData() {
    var future = getNetworkData();
    // 当future实例有返回结果时，会自动回调then中传入的函数
    future.then((value) {
      print("执行了invokeGetNetworkData的future:" + value);
    });
    print("执行了invokeGetNetworkData末尾行：" + future.toString());
  }

  void main() {
    //executed1(); //step 1
    //printWithDelay("无尽空虚"); //step 2
    ///await关键字，只能在async方法修饰符中才正确执行
    //final tempValue = await createOrderMessage();
    //print("main:执行了 value:" + tempValue.toString());

    invokeGetNetworkData();
  }
}
