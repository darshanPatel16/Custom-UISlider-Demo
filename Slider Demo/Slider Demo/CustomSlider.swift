//
//  CustomSlider.swift
//  Slider Demo
//
//  Created by Darshan on 10/09/20.
//  Copyright © 2020 Kiprosh. All rights reserved.
//

import UIKit

class CustomSlider: UISlider {

    override func trackRect(forBounds bounds: CGRect) -> CGRect {
        let customBounds = CGRect(origin: bounds.origin, size: CGSize(width: bounds.size.width, height: 5.0))
        super.trackRect(forBounds: customBounds)
        return customBounds
    }

}
