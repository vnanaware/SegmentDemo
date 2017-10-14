# LiuXSegment
##一款自定义的segment（类似网易）<br>
###效果图<br>
![](http://upload-images.jianshu.io/upload_images/292993-c91c7bc7575458ec.gif?imageMogr2/auto-orient/strip)  

###使用方法
####1.导入<br>
```#import "LXSegmentScrollView.h" ```
####2.初始化方法<br>
```
LXSegmentScrollView *scView=[[LXSegmentScrollView alloc] initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height-64) titleArray:@[@"头条",@"搞笑",@"视频"] contentViewArray:array];
    [self.view addSubview:scView];
```

######注：因时间原因部分功能还没开发完，如有需求请自行添加，敬请原谅。
######如有任何问题欢迎大家交流指正。[我的简书地址](http://www.jianshu.com/p/503765ad19e4)
