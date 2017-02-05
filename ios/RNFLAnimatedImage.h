//
//  RNFLAnimatedImage.h
//  UIComponentExample
//
//  Created by evan xue on 06/01/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <React/RCTEventDispatcher.h>
#import <React/RCTView.h>
#import <FLAnimatedImage/FLAnimatedImage.h>
//@class RCTEventDispatcher;

@interface RNFLAnimatedImage : UIView
@property (nonatomic, assign) NSString *src;
@property (nonatomic, assign) NSNumber *contentMode;

- (instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher NS_DESIGNATED_INITIALIZER;
@end
