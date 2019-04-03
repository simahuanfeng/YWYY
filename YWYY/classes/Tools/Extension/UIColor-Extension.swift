//
//  UIColor-Extension.swift
//  DYZB
//
//  Created by 张振宇 on 2019/3/11.
//  Copyright © 2019 张振宇. All rights reserved.
//

import UIKit

extension UIColor{
    
    convenience init(r :CGFloat,g :CGFloat,b : CGFloat) {
        self.init(red : r / 255.0, green : g / 255.0,blue : b / 255.0, alpha : 1.0)
        
    }
    
}
