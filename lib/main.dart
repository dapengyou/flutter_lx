import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: TextDemo(),
    ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return TextDemo();
//    return new ImageDemo();
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: new Text("Hello world"),
        ),
        body: Center(
          child: Container(
            //text属性设置
            child: new Text(
              "Hello world" * 9,
//              textAlign: TextAlign.center,
              //从右往左排
//            textDirection: TextDirection.rtl,
              style: TextStyle(
                //字体大小
                fontSize: 36.0,
                //下划线
                decoration: TextDecoration.underline,
                //下划线样式
                decorationStyle: TextDecorationStyle.wavy,
                //下划线颜色
                decorationColor: Color.fromARGB(225, 220, 115, 110),
                //字体颜色
                color: Colors.greenAccent,
                //背景色
                backgroundColor: Colors.white,
                //单词之间距离
//                wordSpacing: 20.0,
                //字母之间的距离
//                letterSpacing: 20.0,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
//              textScaleFactor: 1.5,
            ),

            alignment: Alignment.centerLeft,
            height: 400.0,
            width: 500.0,
            //单一背景
//            color: Colors.blueAccent,

            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.only(left: 20.0),

            //背景渐变
            decoration: new BoxDecoration(
                gradient: const LinearGradient(colors: [
              Colors.lightBlue,
              Colors.lightGreenAccent,
              Colors.pink
            ])),
          ),
        ));
  }
}

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Image.network(
      'https://gw.alicdn.com/tfs/TB1CgtkJeuSBuNjy1XcXXcYjFXa-906-520.png',
      fit: BoxFit.contain,
      width: 50.0,
      height: 50.0,
    );
  }
}

class PaddingTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      //上下左右各添加16像素补白
      padding: EdgeInsets.all(16.0),
      child: Column(
        //显式指定对齐方式为左对齐，排除对齐干扰
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            //左边添加8像素补白
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("Hello world"),
          ),
          Padding(
            //上下各添加8像素补白
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text("I am Jack"),
          ),
          Padding(
            // 分别指定四个方向的补白
            padding: const EdgeInsets.fromLTRB(20.0, .0, 20.0, 20.0),
            child: Text("Your friend"),
          )
        ],
      ),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.yellow,
        child: Align(
          alignment: FractionalOffset(0.2, 0.6),
          child: Container(
            height: 40.0,
            width: 40.0,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
