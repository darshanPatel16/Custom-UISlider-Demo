//
//  ViewController.swift
//  Slider Demo
//
//  Created by Darshan on 10/09/20.
//  Copyright © 2020 Kiprosh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: CustomSlider!
    @IBOutlet weak var lblSliderValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.setThumbImage(UIImage(named: "sliderThumb"), for: .normal)
        slider.setThumbImage(UIImage(named: "sliderThumb"), for: .highlighted)
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let x = Int(round(sender.value))
        lblSliderValue.text = "\(x)"
        lblSliderValue.center = setUISliderThumbValueWithLabel(slider: sender)
    }

    func setUISliderThumbValueWithLabel(slider: UISlider) -> CGPoint {
        let sliderTrack: CGRect = slider.trackRect(forBounds: slider.bounds)
        let sliderFrm: CGRect = slider.thumbRect(forBounds: slider.bounds, trackRect: sliderTrack, value: slider.value)
        return CGPoint(x: sliderFrm.origin.x + slider.frame.origin.x + 12, y: slider.frame.origin.y + 25)
    }
    
}

