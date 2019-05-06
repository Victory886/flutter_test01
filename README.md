# aaa
- ## 测试的项目就随便写了个AAA的名字哈
  这次学习了Tabbar。

- ## 本次更新主要是做了 分类
  把一些组件都放到单独的文件中了
  慢慢的进行组件开发。

- ## 本次更新主要是做了 导航栏上添加按钮

- ## 本次更新主要是做了 标签栏和标签页面显示对应的图标。
```dart
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Terry"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Navigration',
            onPressed: () => debugPrint('search button is pressed.'),
          ),
          IconButton(
            icon: Icon(Icons.more_horiz),
            tooltip: 'Navigration',
            onPressed: () => debugPrint('Navigration button is pressed.'),
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigration',
          onPressed: () => debugPrint('Navigration button is pressed.'),
        ),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(icon: Icon(Icons.local_florist)),
            Tab(icon: Icon(Icons.change_history)),
            Tab(icon: Icon(Icons.directions_bike)),
          ],
        ),
      ),

      // body: ListViewDemo(),
      // bottomNavigationBar: BottomNavigationBarDemo(),
      // body: ListViewDemo(),
      body: TabBarView(
        children: <Widget>[
          Icon(Icons.local_florist,size: 128.0,color: Colors.black12),
          Icon(Icons.change_history,size: 128.0,color: Colors.black12),
          Icon(Icons.directions_bike,size: 128.0,color: Colors.black12),
        ],
      ),
      ),
    );
  }
}

```

- ## 本次更新主要是学习了一此自定义的小部件
  代码如下：
```dart
import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return TextDemo();
    // return RichTextDemo();
    return ContainerDemo();
  }
}

/// 文字的一些设置
class TextDemo extends StatelessWidget {
  // final TextStyle _textStyle = TextStyle(
  //   fontSize: 16.0,
  // );
  final String _author = "Terry";
  final String _title = "how are your.";

  @override
  Widget build(BuildContext context) {
    return Text(
      "<$_title> -- <$_author> 最近乘坐火车,在车上像快要看看列车时刻表,12306APP查询,然后感觉每次打开APP很麻烦,就去微信小程序里边搜索,果然有我们伟大的猿类同胞做了这件事。",
      textAlign: TextAlign.left,
      style: TextStyle(),
      maxLines: 3,
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: "lsakdflkjsdlkjdlkfjalds",
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 30.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w100,
          ),
          children: [
            TextSpan(
              text: ".net",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.red,
              ),
            ),
          ]),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "http://mpic.tiankong.com/c20/e66/c20e66b6509ffdefa7a04bbfeff20e5e/640.jpg@!240h"),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeat,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(

              /// 设置颜色滤镜，颜色和混合模式
              Colors.indigoAccent[400].withOpacity(0.5),
              BlendMode.luminosity),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 42.0, color: Colors.white),
            // color: Color.fromRGBO(3, 54, 255, 1.0), /// 颜色不能重复
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 120.0,
            height: 120.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                /// 添加边框
                color: Colors.red,
                width: 3.0,
                style: BorderStyle.solid,
              ),
              // borderRadius: BorderRadius.circular(10), /// 加圆角 不能和shape重复使用
              // borderRadius: BorderRadius.only(  /// 指定某个角加圆角
              //   topLeft: Radius.circular(20),
              //   bottomLeft: Radius.circular(30),
              // ),
              boxShadow: [
                /// 添加阴影
                BoxShadow(
                  offset: Offset(20.0, -10.0),
                  color: Colors.red,
                  blurRadius: 10.0,
                  spreadRadius: -10.0,
                ),
              ],
              shape: BoxShape.circle,
              // gradient: RadialGradient(   /// 渐变 外 - 内
              //   colors: [
              //     Color.fromRGBO(7, 101, 255, 1.0),
              //     Color.fromRGBO(7, 31, 155, 1.0),
              //   ],
              // ),
              gradient: LinearGradient(
                /// 渐变 左 - 右
                colors: [
                  Color.fromRGBO(7, 101, 255, 1.0),
                  Color.fromRGBO(7, 31, 155, 1.0),
                ],
                begin: Alignment.topCenter,

                /// 渐变的开始的结束
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


```
