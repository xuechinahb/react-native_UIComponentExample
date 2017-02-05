//
//  RNFLAnimatedImageManager.m
//  UIComponentExample
//
//  Created by evan xue on 06/01/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "RNFLAnimatedImageManager.h"
#import "RNFLAnimatedImage.h"
#import <React/RCTBridge.h>

@implementation RNFLAnimatedImageManager

RCT_EXPORT_MODULE();

@synthesize bridge = _bridge;

- (UIView *)view{
  return [[RNFLAnimatedImage alloc]initWithEventDispatcher:self.bridge.eventDispatcher];
}

-(dispatch_queue_t)methodQueue{
  return dispatch_get_main_queue();
}

RCT_EXPORT_VIEW_PROPERTY(src, NSString);
RCT_EXPORT_VIEW_PROPERTY(contentMode, NSNumber);

-(NSArray *)customDirectEventType
{
  return @[@"onFrameChange" ];
}

-(NSDictionary *)constantsToExport
{
  return @{@"ScaleAspectFit": @(UIViewContentModeScaleAspectFit),
           @"ScaleAspectFill": @(UIViewContentModeScaleAspectFill),
           @"ScaleToFill": @(UIViewContentModeScaleToFill)};
}
@end
