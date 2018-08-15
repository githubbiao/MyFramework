![错误详情](http://upload-images.jianshu.io/upload_images/1495771-d2aaa2f95603446b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
1.情况一
 - 在Build Phases里的Compile Sources 缺少部分```.m```文件
 - 解决方案:在Build Phases -> Compile Sourse 添加文件报错提示的相关类的```.m```文件
![解决方案](http://upload-images.jianshu.io/upload_images/1495771-f891503d4fe7e1a1.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

2.情况二
- framework文件没有导入(暂时未遇到，资料来源于网络)
- 静态库编译时往往需要一些库的支持，查看你是否有没有导入的库文件
同样是在Build Phases里的Link Binary With Libraries中添加相应的framework。
