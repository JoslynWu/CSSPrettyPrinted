# CSPrettyPrinted

你是否需要一种log，

**它支持中文，而不是中文Unicode;**

**它支持缩进，并且还带缩进标记符;**

**它变化不大，但总觉得更美。**

就像这样：

```
{
.   numb = 2222,
.   itemData = <6e6f726d 616c20e6 99aee980 9a>,
.   normalStr = "normal 普通",
.   arr = 
.   [
.   .   "1item1",
.   .   "1元素2",
.   .   "1item3"
.   ]
.   value = NSSize: {50, 50},
.   summary = "摘要",
.   sub = 
.   {
.   .   url = "https://baidu.com",
.   .   title = "2子标题"
.   }
.   null = <null>,
.   itemDictStr = "{"url": "ddd", "title": "2子标题"}",
.   date = 2018-02-05 03:11:38 +0000,
.   set = 
.   (
.   .   "22",
.   .   "set 中文",
.   .   {
.   .   .   url = "https://baidu.com",
.   .   .   title = "2子标题"
.   .   }
.   .   [
.   .   .   "1item1",
.   .   .   "1元素2",
.   .   .   "1item3"
.   .   ]
.   .   "11"
.   )
.   name = "aaa",
.   obj = <CSSimpleModel: 0x60000024bca0>
}
```

## 使用

代码中导入头文件，然后使用`cs_toSting`即可。

```
instance.cs_toSting;
```

控制台：

```
po instance
```

注意：`instance` 可以是 `NSDictionary` 、 `NSArray` 、 `NSSet` 的实例。


## 引入

方式一、 直接将Sources文件夹下文件添加（拖入）到项目中

```
CSPrettyPrinted.h
CSPrettyPrinted.m
```

方式二、 CocoaPods

```
pod 'CSPrettyPrinted'
```

## 其它

如果需要在使用`%@`时打印这样的格式，可以在对应的分类中添加如下代码：

```
- (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level {
    return [NSString stringWithFormat:@"\n%@\n%@", [super description], self.cs_toSting];
}
```