![崩溃详情](http://upload-images.jianshu.io/upload_images/1495771-5e285f360c11ee5f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这种错误的原因是插入了不识别的数据类型，或数据结构内包含了除NSUserDefault支持的数据类型。***NSUserDefaults支持的数据类型有NSString、 NSNumber、NSDate、 NSArray、NSDictionary、BOOL、NSInteger、NSFloat***等系统定义的数据类型。
即使你将model再次封装成字典：
```
[[NSUserDefaults standardUserDefaults] setValue:@{@"user": user} forKey:@"user"];
```
这样依然会崩溃。

自定义的类型需要转成NSData再存入。

[测试代码](https://github.com/githubbiao/NSUserDefault_study.git)
