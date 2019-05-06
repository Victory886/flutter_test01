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
