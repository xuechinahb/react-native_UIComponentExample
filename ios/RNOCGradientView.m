//
//  RNOCGradientView.m
//  UIComponentExample
//
//  Created by evan xue on 04/02/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "RNOCGradientView.h"
#import <React/RCTViewManager.h>

@interface RCT_EXTERN_MODULE(RNGradientViewSwift, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(rnColors, NSArray);
RCT_EXPORT_VIEW_PROPERTY(rnLocations, NSArray);


@end

@implementation RNOCGradientView

@end
