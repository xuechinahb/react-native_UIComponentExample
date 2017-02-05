//
//  RNGradientViewManager.swift
//  UIComponentExample
//
//  Created by evan xue on 04/02/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

import Foundation
@objc(RNGradientViewSwift)
class RNGradientViewManager: RCTViewManager{
  override func view() -> UIView! {
    return RNGradientView()
  }
}
