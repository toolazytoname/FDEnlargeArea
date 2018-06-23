# FDEnlargeArea

[![CI Status](https://img.shields.io/travis/toolazytoname/FDEnlargeArea.svg?style=flat)](https://travis-ci.org/toolazytoname/FDEnlargeArea)
[![Version](https://img.shields.io/cocoapods/v/FDEnlargeArea.svg?style=flat)](https://cocoapods.org/pods/FDEnlargeArea)
[![License](https://img.shields.io/cocoapods/l/FDEnlargeArea.svg?style=flat)](https://cocoapods.org/pods/FDEnlargeArea)
[![Platform](https://img.shields.io/cocoapods/p/FDEnlargeArea.svg?style=flat)](https://cocoapods.org/pods/FDEnlargeArea)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

~~~objective-c
#import "UIControl+FDEnlargeArea.h"
~~~

~~~objective-c
[self.enlargeButton fd_setEnlargeEdge:30];
~~~

## TODO
UISwitch and UISlider is invalid



## Installation

FDEnlargeArea is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
source 'https://github.com/CocoaPods/Specs.git'  # 官方库
source 'https://github.com/toolazytoname/Specs.git'#懒得起名私有库

platform :ios, '8.0'
target "TargetName" do
pod 'FDEnlargeArea'
end
```

## Author

toolazytoname, lazywc@gmail.com

## License

FDEnlargeArea is available under the MIT license. See the LICENSE file for more info.
