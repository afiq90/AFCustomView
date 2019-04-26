# AFCustomView
Creating a UIView with shadows and cornered radius is a lot more challenging than one may think. Using this helper class you can simply create a view with corner radius and shadows in no time at all.

RoundedShadowViewHelper.swift file contains the custom helper class. Whenever you want to create a UIView with shadows and rounded corner just make a instance of RSCustomView class and use the custom initializer to pass the preferred values for shadowRadius, view's cornerRadius, shadowOffset, shadowOpacity & shadowColor.

![alt text](https://github.com/Onaeem26/RSCustomView/raw/master/RSCustomViewScreenshot.png)

# Requirement

Swift 4.2 & 5.0. Ready for use on iOS 10+

# Installation

**CocoaPods:**

You can use CocoaPods to install AFCustomView by adding it to your Podfile:

```pod 'AFCustomView', :git => 'https://github.com/afiq90/AFCustomView.git', :tag => '0.7.0'```

# How to use

```
var myCustomView : AFCustomView!

view.backgroundColor = .white

myCustomView = AFCustomView(cornerRadius: 30, shadowRadius: 30, shadowOffset: CGSize(width: 0, height: 0), shadowColor: UIColor.black, shadowOpacity: 1.0)
myCustomView.bgColor = UIColor(red:0.29, green:0.63, blue:0.49, alpha:1.0)


view.addSubview(myCustomView)

myCustomView.translatesAutoresizingMaskIntoConstraints = false
myCustomView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
myCustomView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
myCustomView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
myCustomView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true


```
