CGStretchView
=============

A very customizable replacement for a simple UIImageView and UILabel that can be stretched, rotated, and moved with gestures

![alt tag](http://chrisgalz.com/cgstretch.png)

To put in your own app
=======================
1. Drag these into your Xcode Project and import the header where you want to use a stretch view
```objc
CGStretchView.h
CGStretchView.m
```

Make/Customize your stretch view
===================================================================

```objc
CGStretchView *stretchView = [[CGStretchView alloc] initWithFrame:CGRectMake(60, 60, 200, 200)];
stretchView.image = [UIImage imageNamed:@"dogeArt.jpg"];
stretchView.cornerButtonImage = [UIImage imageNamed:@"dogeArt.jpg"];
stretchView.labelText = @"Wow";
stretchView.borderColor = [UIColor greenColor];
stretchView.borderThickness = 5.0f;
stretchView.cornerButtonRadius = 30.0f;
[self.view addSubview:stretchView];
```

This can replace both a UILabel and a UIImageView. Just set the label properties to it like text, or you can simply set an image to it.
Many different properties can be changed, so check the header file to see what else can be changed.

To use the corner button
=========================

This stretch view has a corner button, which comes in handy if this is being used in an image editor where a user drags on resizable objects. This button can be used for anything e.g. a delete button or cancel button.

Add the delegate: ```objc<CGStretchViewDelegate>```
Then add the delegate methods to see when the user touches the button or the stretch view itself
```objc
- (void)cornerButtonPressed:(UIButton*)cornerButton withStretchView:(CGStretchView*)stretchView;
- (void)stretchViewTapped:(CGStretchView*)stretchView;
```

Try out the sample project for examples.
