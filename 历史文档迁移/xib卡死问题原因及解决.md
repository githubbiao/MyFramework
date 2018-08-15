## xib卡死问题原因及解决
```
xib ：
<simulatedNavigationBarMetrics key="simulatedTopBarMetrics" translucent="NO" prompted="NO"/>
	
<simulatedNavigationBarMetrics key="simulatedTopBarMetrics" translucent="NO" prompted="NO"/>
```


### 解决方案 1
```   
self.navigationController.navigationBar.translucent = NO;
self.navigationController.navigationBar.barTintColor = [UIColor magentaColor];

```

### 使用storybored设置Top Bar 不透明(Opaque)就不会卡死 

```
存在问题
- 一般ViewControllerpush后会是上一个NavigationController的外观
- UINavigationViewController和UITabBarController不能push
```


## show 和 showDetail push的区别
```
1. 我发现show和showDetail方法可以推出UINavigationController而使用push直接就crash了
2. 可以说是有区别的show可以推出继承UIViewController和它的所有子类(不包括UITabBarController, UINavigationController)。
3. 使用show方法跳转到另一个UITabBarController, UINavigationController其实是模态出去的
```
## [黄仪标的GitHub](https://github.com/CoderJackyHuang)

