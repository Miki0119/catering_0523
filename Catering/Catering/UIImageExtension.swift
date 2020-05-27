//
//  UIImageExtension.swift
//  Catering
//
//  Created by Miki Kuromoto on 2020/05/28.
//  Copyright © 2020 Sky-Angel. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    func resize() -> UIImage? {
        let rate = 320.0 / self.size.width
        let rect = CGRect(x: 0, y: 0, width: self.size.width * rate, height: self.size.height * rate)
        
        UIGraphicsBeginImageContext(rect.size)
        self.draw(in: rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
        
    }
}


