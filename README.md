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

- ## 本次更新主要是做了一个抽屉效果
```dart

    drawer: Container(
      color: Colors.red,
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('this is drawer')
        ],
      ),
    ),

```