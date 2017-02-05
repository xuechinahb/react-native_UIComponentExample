//
//  RNFLAnimatedImage.m
//  UIComponentExample
//
//  Created by evan xue on 06/01/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "RNFLAnimatedImage.h"
#import <React/RCTBridgeModule.h>
#import <React/RCTEventDispatcher.h>
#import <React/UIView+React.h>
#import <React/RCTLog.h>
#import <FLAnimatedImage/FLAnimatedImageView.h>

@implementation RNFLAnimatedImage{
  RCTEventDispatcher *_eventDispatcher;
  FLAnimatedImage *_image;
  FLAnimatedImageView *_imageView;
}

-(instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher
{
  if (self = [super init]) {
    _eventDispatcher = eventDispatcher;
    _imageView = [FLAnimatedImageView new];
    [_imageView addObserver:self forKeyPath:@"currentFrameIndex" options:0 context:nil];
  }
  
  return self;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
  if (object == _imageView) {
    if ([keyPath isEqualToString:@"currentFrameIndex"]) {
      [_eventDispatcher sendInputEventWithName:@"onFrameChange" body:@{@"currentFrameIndex":[NSNumber numberWithUnsignedInteger:[object currentFrameIndex]], @"frameCount": [NSNumber numberWithUnsignedInteger:[_image frameCount]], @"target": self.reactTag}];
    }
  }
}


-(void)removeFromSuperview//对应react native的componentWillUnmount函数
{
  [_imageView removeObserver:self forKeyPath:@"currentFrameIndex"];
  _eventDispatcher = nil;
  [super removeFromSuperview];
}

-(void)reloadImage
{
  _image = [FLAnimatedImage animatedImageWithGIFData:[NSData dataWithContentsOfURL:[NSURL URLWithString:_src]]];
  _imageView.contentMode = [_contentMode integerValue];
  _imageView.animatedImage = _image;
}

-(void)layoutSubviews//对应react native的componentWillMount函数
{
  _imageView.frame = self.bounds;
  [self addSubview:_imageView];
}

-(void)setSrc:(NSString *)src{
  if (![src isEqual:_src]) {
    _src = [src copy];
    [self reloadImage];
  }
}

-(void)setContentMode:(NSNumber *)contentMode{
  if (![contentMode isEqual:_contentMode]) {
    _contentMode = [contentMode copy];
    [self reloadImage];
  }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
