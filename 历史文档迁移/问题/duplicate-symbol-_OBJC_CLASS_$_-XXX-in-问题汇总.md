*假设出问题的类是Model类*

1.由于疏忽，导入了```.m```文件
解决方案：在项目内搜索``` #import "Model.m" ```,如果有直接改为```.h```文件，问题通常在在代码区。


![将名为Temp类的```.m```文件导入后会报错](http://upload-images.jianshu.io/upload_images/1495771-d8ebcaad5d7d37d2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

2.同一个类实现了两次，即有两个```@implementation```,这种情况通常是合作开发过程中，创建了两个同名类，肯定不在同一个文件夹，搜索``` #import "Model.h" ```，直接查看搜索出来的目录，看是不是一个类被创建了两次，有同名的两个```.m```,```.h```文件，协商删除一个即可。


![模拟Temp类有两个实现，创建文件时不会直接报错，temp文件夹不是group](http://upload-images.jianshu.io/upload_images/1495771-b4a05eb1925d11ed.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![搜索文件，代码都可以，第一，第二种情况都是这么解决的](http://upload-images.jianshu.io/upload_images/1495771-f26ed23a29390d40.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

3.Targets的Build Phase设置项里，查看Complie Sources这一项，同一个文件被引入两次。
在Complie Source 下搜索重名文件，如果有就删除一个，如果再报```OBJC_CLASS_$_XXXX",referenced form```,再次在Complie Source中重新导入这个文件的```.m```文件就可以了。


![就是这个位置了，可以使用搜索框检查一下](http://upload-images.jianshu.io/upload_images/1495771-331ee9beb781e510.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


4.如果我们的工程中引用了第三方的库，而恰好第三方的库里面有一个同名文件，如果以上方案都解决不了可以尝试重命名该类。
```
  这个问题自己解决，名字看你心情了。
```

5.其他，希望小伙伴将问题详情和解决方案发给我。
