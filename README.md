# YQCircleProgressView
iOS Circle Progress View
环形进度条控件

### 效果：
 ![image](https://github.com/976431yang/YQCircleProgressView/blob/master/DEMO/ScreenShot/2018-08-29%2020_18_50.gif) 
 
 - 支持纯色、图片、阴影、动画

##### 简单使用 - 纯色
![image](https://github.com/976431yang/YQCircleProgressView/blob/master/DEMO/ScreenShot/imgRed.png)

```Swift
// 初始化
let progressView = YQCircleProgreeView(frame: CGRect(...))
// 颜色
progressView.defaultBorderColor = UIColor.red
// 粗细
progressView.borderWidth = 20
// 进度
progressView.setProgress(0.5)
// 加载显示
view.addSubview(progressView)
```

- 如果需要让它使用动画变到相应进度：

```Swift
// 设置动画时长
progressView.animationDuration = 0.5
// 设置进度
progressView.setProgress(0.8, animation: true)
```

- 和普通UIView一样设置阴影：

```Swift
progressView.layer.shadowColor = UIColor.lightGray.cgColor
progressView.layer.shadowRadius = 5
progressView.layer.shadowOpacity = 0.8
```

##### 使用图片达到更好的效果
![image](https://github.com/976431yang/YQCircleProgressView/blob/master/DEMO/ScreenShot/imgImg.jpg)

- 设置一张图片上去即可：

```Swift
progressView.backgroundImage = UIImage(named: "test.jpg")
```

