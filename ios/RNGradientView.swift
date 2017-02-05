//
//  RNGradientView.swift
//  UIComponentExample
//
//  Created by evan xue on 04/02/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

import Foundation
import GradientView

@objc(RNGradientView)
class RNGradientView: GradientView{
  
  
  open var rnColors: NSArray?{
    didSet{
//      self.colors = rnColors!.map({return RCTConvert.uiColor(($0))})
      self.colors = rnColors!.map(){RCTConvert.uiColor(($0))}
    }
  }
  
  open var rnLocations: NSArray?{
    didSet{
//      self.locations = rnLocations!.map({return $0 as! CGFloat})
      self.locations = rnLocations!.map(){$0 as! CGFloat}
    }
  }
  
  override init(frame: CGRect){
    super.init(frame: frame)
    self.frame = frame
    print("this is init")

  }

  required init?(coder aDecoder: NSCoder){
    fatalError("init(coder:) has not been complemented")
  }
  
}
