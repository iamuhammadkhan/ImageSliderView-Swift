//
//  ViewController.swift
//  ImageSliderDemo
//
//  Created by MuhammadKhan on 5/11/18.
//  Copyright © 2018 MuhammadKhan. All rights reserved.
//

import UIKit
import LIHImageSlider

class ViewController: UIViewController, LIHSliderDelegate {
    
    @IBOutlet weak var sliderView: UIView!
    
    let images = [#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "2")]
    
    var slider: LIHSlider!
    var sliderVC: LIHSliderViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider = LIHSlider(images: images)
        
        sliderVC = LIHSliderViewController(slider: slider)
        sliderVC.delegate = self
        sliderVC.view.frame = sliderView.bounds
        sliderVC.view.center = sliderView.center
        sliderView.addSubview(sliderVC.view)
    }

    func itemPressedAtIndex(index: Int) {
        //
    }

}

