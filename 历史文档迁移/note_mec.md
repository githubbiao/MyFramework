## 改变UINavgationBar透明度
[[[self.navigationController.navigationBar subviews] objectAtIndex:0] setAlpha:0]
## 带上标的button
[button](https://github.com/dral3x/CustomBadge)
[重新布局button](http://www.jianshu.com/p/10fd073d50ae)

## 改变button图文位置的代码
```
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        // 按钮图片和标题总高度
        CGFloat totalHeight = (self.imageView.frame.size.height + self.titleLabel.frame.size.height);
        // 设置按钮图片偏移
        [self setImageEdgeInsets:UIEdgeInsetsMake(-(totalHeight - self.imageView.frame.size.height), 0.0, 0.0, -self.titleLabel.frame.size.width)];
        // 设置按钮标题偏移
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0.0, -self.imageView.frame.size.width, -(totalHeight - self.titleLabel.frame.size.height),0.0)];
    }
    return self;
}
```

[参考链接1](http://m.blog.csdn.net/article/details?id=47127809)
[参考链接2](https://github.com/HelloYeah/YLButton)


## 搜索框自定义
```
- (UISearchBar *)searchBar {
    if (_searchBar == nil) {
        _searchBar = [[UISearchBar alloc]init];
        _searchBar.barStyle = UIBarStyleDefault;
        _searchBar.searchBarStyle = UISearchBarStyleDefault;
        _searchBar.placeholder = @"输入你要找的商品";
        
        _searchBar.barTintColor = [UIColor greenColor];
        UIColor *color = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
        UITextField *searchField = [_searchBar valueForKey:@"_searchField"];
        [searchField setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
        [searchField setValue:[UIFont boldSystemFontOfSize:13] forKeyPath:@"_placeholderLabel.font"];
        searchField.backgroundColor = color;
        [_searchBar setImage:[[UIImage imageNamed:@"home_qiandao_bai.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forSearchBarIcon:UISearchBarIconSearch state:UIControlStateNormal];
        _searchBar.delegate = nil;

    }
    return _searchBar;
}

```


## LTNavigationBar
改变navigationbar的第三方[LTNavigationBar-master](https://github.com/ltebean/LTNavigationBar.git)


## 带输入框的alert
[TYAlertController](https://github.com/12207480/TYAlertController.git)

