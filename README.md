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

- ## 本次更新主要学习了布局
  代码如下：
  ```dart
  import 'package:flutter/material.dart';

  class LayoutDemo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Container(
        child: Column(
          /// 竖着排列 row 横着排列
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,  /// 对齐
          children: <Widget>[
            // StackDemo(),
            // AspectRatio(
            //   aspectRatio: 2.0/2.0,
              // child: Container(
              //   color: Color.fromRGBO(3, 54, 255, 1.0),
              // ),
            // ),

            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 200.0,
                maxWidth: 200.0,
              ),
              child: Container(
                color: Color.fromRGBO(3, 54, 55, 1.0),
              ),
            )

          ],
        ),
      );
    }
  }

  class IconBadge extends StatelessWidget {
    final IconData icon;
    final double size;

    IconBadge(
      this.icon, {
      this.size = 32.0,
    });

    @override
    Widget build(BuildContext context) {
      return Container(
        child: Icon(icon, size: size, color: Colors.white),
        width: size + 60,
        height: size + 60,
        color: Color.fromRGBO(3, 54, 255, 1.0),
      );
    }
  }

  class StackDemo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Stack(
        alignment: Alignment.topRight,
        children: <Widget>[
          SizedBox(
            width: 200.0,
            height: 300.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                // borderRadius: BorderRadius.circular(8.0),
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  // 渐变
                  colors: [
                    Color.fromRGBO(7, 102, 255, 1.0),
                    Color.fromRGBO(70, 10, 255, 1.0),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 32.0,
          ),
          SizedBox(
            width: 100.0,
            height: 100.0,
            child: Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(Icons.brightness_2, color: Colors.yellow, size: 32.0),
            ),
          ),
          Positioned(
            right: 20.0,
            top: 20.0,
            child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
          ),
        ],
      );
    }
  }
```