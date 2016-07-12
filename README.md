<img src="https://github.com/tao6/ImageCache/raw/master/TaoAutoLayout/logo.png" width="30%" height="30%">
# TaoAutoLayout
* 这是一个swift的轻量级自动布局框架

## Contents

```swift
    ///  填充子视图
    ///
    ///  - parameter referView: 参考视图
    ///  - parameter insets:    间距
    public func tao_Fill(referView: UIView, insets: UIEdgeInsets = UIEdgeInsetsZero) -> [NSLayoutConstraint] 
```
```swift
    ///  参照参考视图内部对齐
    ///
    ///  - parameter type:      对齐方式
    ///  - Parameter referView: 参考视图
    ///  - Parameter size:      视图大小，如果是 nil 则不设置大小
    ///  - Parameter offset:    偏移量，默认是 CGPoint(x: 0, y: 0)
    ///
    ///  - returns: 约束数组
    public func tao_AlignInner(type type: tao_AlignType, referView: UIView, size: CGSize?, offset: CGPoint = CGPointZero) -> [NSLayoutConstraint]
```
```swift
    ///  参照参考视图垂直对齐
    ///
    ///  - parameter type:      对齐方式
    ///  - parameter referView: 参考视图
    ///  - parameter size:      视图大小，如果是 nil 则不设置大小
    ///  - parameter offset:    偏移量，默认是 CGPoint(x: 0, y: 0)
    ///
    ///  - returns: 约束数组
    public func tao_AlignVertical(type type: tao_AlignType, referView: UIView, size: CGSize?, offset: CGPoint = CGPointZero) -> [NSLayoutConstraint]
```
```swift
    ///  参照参考视图水平对齐
    ///
    ///  - parameter type:      对齐方式
    ///  - parameter referView: 参考视图
    ///  - parameter size:      视图大小，如果是 nil 则不设置大小
    ///  - parameter offset:    偏移量，默认是 CGPoint(x: 0, y: 0)
    ///
    ///  - returns: 约束数组
    public func tao_AlignHorizontal(type type: tao_AlignType, referView: UIView, size: CGSize?, offset: CGPoint = CGPointZero) -> [NSLayoutConstraint]
```
```swift
    ///  在当前视图内部水平平铺控件
    ///
    ///  - parameter views:  子视图数组
    ///  - parameter insets: 间距
    ///
    ///  - returns: 约束数组
    public func tao_HorizontalTile(views: [UIView], insets: UIEdgeInsets) -> [NSLayoutConstraint] 
```
```swift
    ///  在当前视图内部垂直平铺控件
    ///
    ///  - parameter views:  子视图数组
    ///  - parameter insets: 间距
    ///
    ///  - returns: 约束数组
    public func tao_VerticalTile(views: [UIView], insets: UIEdgeInsets) -> [NSLayoutConstraint]
```
```swift
    ///  从约束数组中查找指定 attribute 的约束
    ///
    ///  - parameter constraintsList: 约束数组
    ///  - parameter attribute:       约束属性
    ///
    ///  - returns: attribute 对应的约束
    public func tao_Constraint(constraintsList: [NSLayoutConstraint], attribute: NSLayoutAttribute) -> NSLayoutConstraint?
```

## <a id="Reference"></a>Reference
```objc
* 展示例子
```
<img src="https://github.com/tao6/ImageCache/raw/master/TaoAutoLayout/TaoAutoLayoutExmple.png" width="30%" height="30%">


## <a id="tao_AlignInner"></a>tao_AlignInner

```swift
    eBtn.tao_AlignInner(type: tao_AlignType.CenterCenter, referView: self, size: CGSizeMake(250, 250))
```
<img src="https://github.com/tao6/ImageCache/raw/master/TaoAutoLayout/tao_AlignInner.png" width="30%" height="30%">

## <a id="tao_AlignVertical"></a>tao_AlignVertical

```swift
    tlBtn.tao_AlignVertical(type: tao_AlignType.TopLeft, referView: centerBtn, size: smallSize, offset: CGPointMake(0, -10))
```
<img src="https://github.com/tao6/ImageCache/raw/master/TaoAutoLayout/tao_AlignVertical.png" width="30%" height="30%">

## <a id="tao_AlignHorizontal"></a>tao_AlignHorizontal

```swift
    eBtn.tao_AlignHorizontal(type: tao_AlignType.CenterCenter, referView: self, size: CGSizeMake(250, 250))
```
<img src="https://github.com/tao6/ImageCache/raw/master/TaoAutoLayout/tao_alignHorizontal.png" width="30%" height="30%">

## <a id="tao_HorizontalTile"></a>tao_HorizontalTile

```swift
    tao_HorizontalTile([lBtn, cBtn, rBtn], insets: UIEdgeInsets.init(top: 74, left: 10, bottom: 10, right: 10))
```
<img src="https://github.com/tao6/ImageCache/raw/master/TaoAutoLayout/tao_HorizontalTile.png" width="30%" height="30%">

## <a id="tao_VerticalTile"></a>tao_VerticalTile

```swift
    tao_VerticalTile([tBtn, cBtn, bBtn], insets: UIEdgeInsets.init(top: 74, left: 10, bottom: 10, right: 10))
```
<img src="https://github.com/tao6/ImageCache/raw/master/TaoAutoLayout/tao_VerticalTile.png" width="30%" height="30%">

## <a id="tao_Constraint"></a>tao_Constraint

```swift
    let cons = btn!.tao_AlignInner(type: tao_AlignType.CenterCenter, referView: self, size: CGSizeMake(100, 100))
    btnWidth = btn!.tao_Constraint(cons, attribute: NSLayoutAttribute.Width)
    btnHeight = btn!.tao_Constraint(cons, attribute: NSLayoutAttribute.Height)
```
<img src="https://github.com/tao6/ImageCache/raw/master/TaoAutoLayout/tao_Constraint.gif" width="30%" height="30%">

### Installation with CocoaPods

[CocoaPods](http://cocoapods.org/) is a dependency manager for Swift, which automates and simplifies the process of using 3rd-party libraries in your projects. See the [Get Started](http://cocoapods.org/#get_started) section for more details.

#### Podfile
```
platform :ios, '8.0'
use_frameworks!
pod 'TaoAutoLayout', '~>0.0.3'
```
-------------------

## Licenses

All source code is licensed under the [MIT License](https://github.com/tao6/TaoAutoLayot/master/LICENSE).
