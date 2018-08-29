//
//  ViewController.swift
//  YQCIrcleProgressView-Demo
//
//  Created by FreakyYang on 2018/8/29.
//  Copyright © 2018年 FreakyYang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animateSwitcher: UISwitch!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var shadowSwitcher: UISwitch!
    @IBOutlet weak var segment: UISegmentedControl!
    
    let progressView: YQCircleProgreeView = {
        let progressView = YQCircleProgreeView(frame: CGRect(x: 0, y: 200,
                                                             width: 300, height: 200))
        
        // 粗细
        progressView.borderWidth = 20
        // 动画时间
        progressView.animationDuration = 0.5
        return progressView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(progressView)
        
        shadowSliderChanged(shadowSwitcher)
        segmentChanged(segment)
        sliderChanged(slider)
    }
    
    
    @IBAction func animationSliderChanged(_ sender: UISwitch) {
        slider.isContinuous = !sender.isOn
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        progressView.setProgress(Double(sender.value),
                                 animation: animateSwitcher.isOn)
    }
    
    @IBAction func shadowSliderChanged(_ sender: UISwitch) {
        if shadowSwitcher.isOn {
            progressView.layer.shadowColor = UIColor.lightGray.cgColor
            progressView.layer.shadowRadius = 5
            progressView.layer.shadowOpacity = 0.8
        } else {
            progressView.layer.shadowColor = UIColor.clear.cgColor
            progressView.layer.shadowRadius = 0
            progressView.layer.shadowOpacity = 0
        }
    }
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            progressView.backgroundImage = nil
            progressView.defaultBorderColor = UIColor.red
        case 1:
            progressView.backgroundImage = images[Int(drand48() * 99) % 4]
        default:
            break
        }
    }
    
    let images = [UIImage(named: "test.jpg"),
                  UIImage(named: "black.png"),
                  UIImage(named: "white.jpg"),
                  UIImage(named: "color.jpg")]
    
}

