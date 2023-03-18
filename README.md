# my_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## NOTE

### ════════ Exception caught by gestures library════Cannot hit test a render box with no size.
这个错误通常是由于在构建呈现树时尝试进行无限制的布局而导致的。这可能是由于以下原因之一：

- 在使用 ListView、Column、Row 等布局 widget 时没有使用适当的 constraints 或进行了硬编码。
- 在使用自定义 widget 时，没有正确处理 widget 的大小，并且在布局时没有返回正确的尺寸。

如果这个错误发生在 ListView、Column、Row 等布局 widget 上，你可以尝试一下解决办法：

- 确保您的布局 widget 有足够的约束条件，例如使用 Expanded、Flexible、SizedBox 等。

- 检查您的布局 widget 是否正确嵌套。嵌套太深可能会影响布局效率。

如果这个错误发生在自定义 widget 上，你可以尝试一下解决办法：

- 确保您的自定义 widget 正确实现了尺寸约束，即重写了该 widget 的 getSize() 方法并返回正确的尺寸。

- 确保您的自定义 widget 在布局过程中正确处理了尺寸，例如不要在没有足够空间的情况下强制渲染大量尺寸元素等。

### const??
常量组件需要加const，好处是提高性能。

### windows模拟器,字体fontweight不统一？
TODO: 在其他模拟器或者真机做做测试
猜想：windows模拟器问题
解决方案：设置 FontWeight.normal
