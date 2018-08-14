# LycricsTextView

[![CI Status](https://img.shields.io/travis/baran.karaoguz@ogr.sakarya.edu.tr/LycTextView.svg?style=flat)](https://travis-ci.org/baran.karaoguz@ogr.sakarya.edu.tr/LycTextView)
[![Version](https://img.shields.io/cocoapods/v/LycTextView.svg?style=flat)](https://cocoapods.org/pods/LycTextView)
[![License](https://img.shields.io/cocoapods/l/LycTextView.svg?style=flat)](https://cocoapods.org/pods/LycTextView)
[![Platform](https://img.shields.io/cocoapods/p/LycTextView.svg?style=flat)](https://cocoapods.org/pods/LycTextView)

**LycricsTextView framework helps  you make subtitle .You write just a line code  and finished textView animation.**

## Example

```swift
import UIKit
import LycTextView

class ViewController: UIViewController {

@IBOutlet weak var lycricsTextView: LycricsTextView!

override func viewDidLoad() {
super.viewDidLoad()
lycricsTextView.lycricsColor = .red
lycricsTextView.animateTime = 20
lycricsTextView.startLycrics()
}

}
```

## Install via CocoaPods

FastOnBoarding is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```ruby
platform :ios, '8.0'
use_frameworks!

pod 'LycricsTextView'
```

####Then on the top of files where you are going to use this:
```swift
import LycTextView
```


## Author

Baran Batuhan Karaoğuz([@Baran](https://github.com/barankaraoguzzz))
baran.karaoguz@ogr.sakarya.edu.tr, b.b.karaoguz@gmail.com

## License

LycTextView is available under the MIT license. See the LICENSE file for more info.
##Keywords swift, swift4, Animating, TextViewAnimating, TextView,, xcode, ios
